###### functions ######

### choose body file name, dependent on the template name
bodyfile <- function(x) {
  if (x == 'article_zh') return('demo/body_article_zh.Rmd')
  if (x == 'calendar') return('demo/body_calendar.tex')
  if (x == 'chemistry') return('demo/body_chemistry.Rmd')
  if (x == 'chemistry_zh') return('demo/body_chemistry_zh.Rmd')
  if (x == 'guitar') return('demo/body_guitar.Rmd')
  if (x == 'mail') return('demo/body_mail.Rmd')
  if (x == 'journal') return('demo/body_journal.Rmd')
  if (x == 'yihui_zh') return('demo/body_yihui_zh.Rmd')
  'demo/body.Rmd'
}

### backup a file, avoid overwrite it.
backup <- function(filename, ifbackup = TRUE) {
  if (ifbackup) {
    if (file.exists(filename)) {
      filenamesplit <- strsplit(filename, '\\.')[[1]]
      filenamesplitl <- length(filenamesplit)
      tolength <- ifelse(filenamesplitl > 1, filenamesplitl - 1, 1)
      filenamepost <- filenamesplit[filenamesplitl]
      backupfile <- paste0('backup/', paste(filenamesplit[1:tolength], collapse = '_'), '-', format(Sys.time(), '%Y-%m-%d-%H-%M-%S'), '.', filenamepost)
      file.copy(filename, backupfile)
      print(paste('File exsits. Backuped to', backupfile, ':)'))
    } else {
      print(paste(filename, 'does not exist. No need to bakcup :)'))
    }
  }
}

###### prepare index.Rmd ######

book_filename <- template
index <- readLines(paste0('demo/index_', template, '.Rmd'), encoding = 'UTF-8')
index[grep('title: "', index)] <- paste0('title: "', title, '"')
index[grep('author: "', index)] <- paste0('author: "', author, '"')
backup('index.Rmd')
writeLines(index, 'index.Rmd', useBytes = TRUE)

###### prepare _bookdown.yml, for the output filename of the book. ######
filenameyml <- readLines('demo/_bookdown.yml', encoding = 'UTF-8')
filenameyml[grep('book_filename: ', filenameyml)] <- paste0('book_filename: ', book_filename)
backup('_bookdown.yml')
writeLines(filenameyml, '_bookdown.yml', useBytes = TRUE)

###### prepare _output.yml. comment it if you only need pdf. ######
backup('_output.yml')
# file.copy('demo/_output.yml', '_output.yml', copy.mode = FALSE, overwrite = TRUE)

###### prepare body.Rmd ######
bodydemo <- bodyfile(template)
bodynew <- paste0('body', substr(bodydemo, nchar(bodydemo)-3, nchar(bodydemo)))
backup('body.Rmd')
file.copy(bodydemo, bodynew, copy.mode = FALSE, overwrite = TRUE)

###### exceptions ######

### article_zh needs an additional abstract.tex file
if (template == 'article_zh') {
  bakcup('abstract.tex')
  file.copy('tex/template_article_zh_abstract.tex', 'abstract.tex', copy.mode = FALSE, overwrite = TRUE)
}

### mail needs an additional template_mail.tex as a before_body part.
if (template == 'mail') {
  tmail <- readLines('tex/template_mail.tex')

  tmail[51] <- paste0('{\\bfseries ', from_who, '}\\\\[.35ex]')
  tmail[53] <- paste0(from_address, '\\\\')
  tmail[54] <- paste0(from_town, '\\\\[.35ex]')
  tmail[55] <- paste0('\\Telefon~', from_phone, '\\\\')
  tmail[56] <- paste0('\\Letter~\\href{mailto:', from_email, '}{', from_email, '}')

  tmail[61] <- paste0('{\\bfseries ', to_who, '}\\\\[.35ex]')
  tmail[63] <- paste0(to_address, '\\\\')
  tmail[64] <- paste0(to_town, '\\\\[.35ex]')

  tmail[78] <- paste0('{\\bfseries ', from_who, '}\\\\')
  writeLines(tmail, 'tex/template_mail_user.tex')
}

### article_mdpi needs an additional bst file
if (template == 'article_mdpi') {
  file.copy('style/mdpi.bst', 'mdpi.bst')
}
