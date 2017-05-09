
# Introduction

`bookdown+`? Hmm...sounds like something related to the R package `bookdown`? 

Yes, you _R_ right. Everyone knows that `bookdown` is an excellent package for authoring books on programing languages. But it is only one side of the coin.  It can do more. `bookdown` smells like a tasty cake. I have been waiting and waiting, but nobody cuts it for me. Fine. Now I am helping myself. Therefore I am developing `bookdown+`.

`bookdown+` is an extension of `bookdown`. It is a collection of multiple templates, which I collected years ago on the basis of \LaTeX, and have been tailoring them so that I can work happily under the umbrella of `bookdown`. `bookdown+` shows you the other side of the coin, which helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries.

I believe some official bookdown templates will be available in the near future, but I cannot wait. Can you?

# Showcase

With `bookdown+` you can

- record guitar chords,

- write a mail in an elegant layout,

- write a laboratory journal, or a personal diary,

- draw a monthly or weekly or conference calendar,

- and, of course, write academic articles in your favorate way,

- with chemical molecular formulae and equations,

- even in Chinese,

- and more.

# Quick start

## Step 0. Preparation

Before starting, you have to install R, RStudio, bookdown package, and packages which bookdown depends on. See the official manual of bookdown for details.

If you are ready, download `bookdown+` package as a zip file from Github. Unzip it to a folder in your PC. You will find a file named `start.Rproj`. Double click it, and it will be opened by RStudio.

OK, now you can see a `_runme.R` file as well. Open it and run the script, or follow my explanation as follows,

## Step 1. Title and author

Specify the title and the author of your book, article, guitar book, or whatever.


```r
title <- 'bookdown+: Authoring Articles, Mails, Guitar books, Chemical Molecular Formulae and Equations with R bookdown'
author <- 'Peng Zhao'
```

## Step 2: Template

Choose a template out of the avaialble tempaltes.


```r
templates  <- c('article',     #1, academic article
                'article_zh',  #2, academic article in Chinese
                'calendar',    #3, calendar, in progress
                'chemistry',   #4, chemical molecular formulae and equations
                'chemistry_zh',#5, in Chinese,
                'guitar',      #6, guitar book
                'mail',        #7, mail, in progress
                'journal',     #8, laboratory journal, or personal diary
                'mini',        #9, a mini demo by Yihui
                'original',    #10, the original demo by Yihui
                'book_zh'      #11, the demo in Chinese by Yihui
)
template <- templates[8]
```

Run `fun/build.R`, and you will get necessary files for further editing.


```r
source('fun/build.R')
```

## Step 3: Write and Build

Now you can press `ctrl+shift+b` to build a template book, which you can find in `book/`.

Write your own text in `body.Rmd`, and build your own lovely book. 

Have fun!

# Updates

- 2017-05-09, Version 0.1. A very preliminary version. This package is based on many other people's excellent contributions, which I have not cited yet.
