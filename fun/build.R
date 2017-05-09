bodyfile <- function(x) {
  if (x == 'book_zh') return('demo/body_book_zh.Rmd')
  if (x == 'article_zh') return('demo/body_article_zh.Rmd')
  if (x == 'calendar') return('demo/body_calendar.tex')
  if (x == 'chemistry') return('demo/body_chemistry.Rmd')
  if (x == 'chemistry_zh') return('demo/body_chemistry_zh.Rmd')
  if (x == 'guitar') return('demo/body_guitar.Rmd')
  if (x == 'mail') return('demo/body_mail.Rmd')
  'demo/body.Rmd'
}

book_filename <- template
index <- readLines(paste0('demo/index_', template, '.Rmd'), encoding = 'UTF-8')
index[grep('title: "', index)] <- paste0('title: "', title, '"')
index[grep('author: "', index)] <- paste0('author: "', author, '"')
# if(file.exists('index.Rmd')) warning('File already exsits! Failed!') else
  writeLines(index, 'index.Rmd', useBytes = TRUE)

filenameyml <- readLines('demo/_bookdown.yml', encoding = 'UTF-8')
filenameyml[grep('book_filename: ', filenameyml)] <- paste0('book_filename: ', book_filename)
writeLines(filenameyml, '_bookdown.yml', useBytes = TRUE)

bodydemo <- bodyfile(template)
bodynew <- paste0('body', substr(bodydemo, nchar(bodydemo)-3, nchar(bodydemo)))
# if(file.exists('body.Rmd')) warning('File already exsits! Failed! ') else
  file.copy(bodydemo, bodynew, overwrite = TRUE)

if (template == 'article_zh') file.copy('tex/template_article_zh_abstract.tex', 'abstract.tex')
