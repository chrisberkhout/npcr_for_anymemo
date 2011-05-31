require "rubygems"
require "bundler/setup"

require "csv"
require "sqlite3"

FileUtils.mkdir_p "output"

CSV.read("hskflashcards.com_npcr.csv").map do |row|
  Hash[[:lesson_num, :lesson_word_num, :zh_hant, :zh_hans, :zh_pinyin, :en, :kind].zip(row)]
end.each_with_index do |word, index|
  word[:word_num] = index + 1
end.group_by do |word|
  word[:lesson_num]
end.each_pair do |lesson_num, lesson|
  db_file = "output/npcr_#{sprintf('%02d', lesson_num)}.db"
  print db_file[/output\/(.*)/, 1]
  FileUtils.rm db_file, :force => true
  db = SQLite3::Database.new db_file
  db.execute "CREATE TABLE android_metadata(locale TEXT DEFAULT en_US);"
  db.execute "INSERT INTO 'android_metadata' VALUES('en_US');"
  db.execute "CREATE TABLE control_tbl(ctrl_key text unique, value text);"
  db.execute "INSERT INTO 'control_tbl' VALUES('question_locale','US');"
  db.execute "INSERT INTO 'control_tbl' VALUES('answer_locale','ZH');"
  db.execute "INSERT INTO 'control_tbl' VALUES('question_align','center');"
  db.execute "INSERT INTO 'control_tbl' VALUES('answer_align','center');"
  db.execute "INSERT INTO 'control_tbl' VALUES('question_font_size','24');"
  db.execute "INSERT INTO 'control_tbl' VALUES('answer_font_size','24');"
  db.execute "INSERT INTO 'control_tbl' VALUES('html_display','both');"
  db.execute "INSERT INTO 'control_tbl' VALUES('ratio','50%');"
  db.execute "CREATE TABLE dict_tbl(_id INTEGER PRIMARY KEY ASC AUTOINCREMENT, question TEXT, answer TEXT, note TEXT, category TEXT);"
  db.execute "CREATE TABLE learn_tbl(_id INTEGER PRIMARY KEY ASC AUTOINCREMENT, date_learn, interval INTEGER, grade INTEGER, easiness REAL, acq_reps INTEGER, ret_reps INTEGER, lapses INTEGER, acq_reps_since_lapse INTEGER, ret_reps_since_lapse INTEGER);"
  lesson.each do |word|
    print "."
    question = "#{word[:en]}\n\n(#{word[:kind]})"
    answer   = "#{word[:zh_pinyin]}" #\n\n#{word[:zh_hans]}
    note     = ""
    category = "Lesson #{sprintf('%02d', lesson_num)}"
    db.execute "INSERT INTO 'dict_tbl' VALUES(NULL,?,?,?,?);", "question", "answer" #, note, category
  end
  puts " done!"
end
