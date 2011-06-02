# NPCR for AnyMemo

## Introduction

[New Practical Chinese Reader](http://en.wikipedia.org/wiki/Practical_Chinese_Reader#New_Practical_Chinese_Reader)
is a textbook for Chinese language learners.
[AnyMemo](http://anymemo.org/) is 
[spaced repetition](http://en.wikipedia.org/wiki/Spaced_repetition)
flashcard software for Android.

This script will generate an AnyMemo flashcard database for each NPCR lesson,
with English (and word type) as the question and pinyin and simplified Chinese
characters as the answer.

The databases will be written to the `output` directory. Existing files will
be overwritten.

The included CSV format vocabularly list for NPCR was downloaded from 
[http://www.hskflashcards.com](http://www.hskflashcards.com).

## Run it

    git clone git://github.com/chrisberkhout/npcr_for_anymemo.git
    cd npcr_for_anymemo
    bundle install
    ruby npcr_for_anymemo.rb

## Status

It works. No further development is planned.

## Compatibility

Written for Ruby 1.9.2-p180.

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
