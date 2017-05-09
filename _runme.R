title <- 'bookdown+: Authoring Articles, Mails, Guitar Chords, Chemical Molecular Formulae and Equations with R bookdown'
author <- 'Peng Zhao'

templates  <- c('article',     #1
                'mini',        #2
                'original',    #3
                'book_zh',     #4
                'article_zh',  #5
                'calendar',    #6
                'chemistry',   #7
                'chemistry_zh',#8
                'guitar',      #9
                'mail',        #10
                'journal'      #11
)

template <- templates[11]

source('fun/build.R')

# Now you can press ctrl+shift+b to get your lovely book. Have fun!
