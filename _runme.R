## ------------------------------------------------------------------------
title <- 'bookdown+: Authoring Articles, Mails, Guitar books, Chemical Molecular Formulae and Equations with R bookdown'
author <- 'Peng Zhao'

## ------------------------------------------------------------------------
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

## ------------------------------------------------------------------------
source('fun/build.R')

## ------------------------------------------------------------------------
bookdown::render_book('index.Rmd', 'all')

