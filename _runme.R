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
                'book_zh',     #11, the demo in Chinese by Yihui
                'article_mdpi' #12, academic article by mdpi
)
template <- templates[12]

title <- 'R bookdown+: Authoring Articles, Mails, Guitar books, Chemical Molecular Formulae and Equations with R bookdown'
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
}

source('fun/build.R')

