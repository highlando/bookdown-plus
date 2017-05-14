templates  <- c('article',     #1, academic article
                'article_zh',  #2, academic article in Chinese
                'calendar',    #3, calendar, in progress
                'chemistry',   #4, chemical molecular formulae and equations
                'chemistry_zh',#5, in Chinese,
                'guitar',      #6, guitar book
                'mail',        #7, mail, in progress
                'journal',     #8, laboratory journal, or personal diary
                'yihui_mini',  #9, a mini demo by Yihui
                'yihui_demo',  #10, the original demo by Yihui
                'yihui_zh',    #11, the demo in Chinese by Yihui
                'article_mdpi',   #12, academic article by mdpi
                'thesis_classic', #13, classic thesis
                'thesis_ubt',     #14, thesis of University of Bayreuth
                'thesis_zju',  #15, thesis of Zhejiang Uni., in Chinese
                'poem',        #16, poem
                'poster'       #17, poster
)

i <- 0

i <- i + 1
template <- templates[17]
title <- 'R bookdown+: Authoring varied types of books and documents with R bookdown'
author <- 'Peng Zhao'

if (template == 'mail') {
  from_who <- author
  from_address <- 'Maximillian Street 27'
  from_town <- '95440 Bayreuth, Germany'
  from_phone <- '62762524'
  from_email <- 'dapengde@live.com'
  to_who <- 'CAMS'
  to_address <- 'Zhongguancunnandajie 46'
  to_town <- '100000 Beijing, China'
  type <- c('business', 'personal')[2]
  fontsize <- c(
    'tiny', 'scriptsize', 'footnotesize', 'small', 'normalsize',
    'large', 'Large', 'LARGE', 'huge','Huge') [9]
}

if (template == 'poem') {
  title <- 'Poem bookdown'
}

if (template == 'poster'){ # choose one theme
  poster_theme <- c('ocean', 'eco', 'rose')[3]
}

source('fun/build.R')

# if you choose 'poster' template, now open index.Rmd and press ctrl+shift+k (twice if citation) to compile it. why? because the poster template is based on rmarkdown rather than bookdown. in progress...

