# npcr\_for_anymemo

New Practical Chinese Reader vocabulary flashcards for AnyMemo

## Introduction

(http://en.wikipedia.org/wiki/Practical_Chinese_Reader#New_Practical_Chinese_Reader)[New Practical Chinese Reader]
is a textbook for the Chinese language. 
(http://anymemo.org/)[AnyMemo] is 
(http://en.wikipedia.org/wiki/Spaced_repetition)[spaced repetition] 
flashcard software for Android.

This script will produce an AnyMemo flashcard database for each lesson, with
English (and word type) as the question and pinyin and simplified Chinese
charaters as the answer.

The databases will be written to the `output` directory. Existing files will
be overwritten.

The included vocabularly list was downloaded from 
(http://www.hskflashcards.com)[http://www.hskflashcards.com].

## Run it

    git clone git://github.com/chrisberkhout/npcr_for_anymemo.git
    cd npcr_for_anymemo
    bundle install
    ruby npcr_for_anymemo.rb

## Status

It works. No further development is planned.

## Compatibility

Written and tested with Ruby 1.9.2-p180.

## Copyright

The MIT License

Copyright (C) 2011 by Chris Berkhout (http://chrisberkhout.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
