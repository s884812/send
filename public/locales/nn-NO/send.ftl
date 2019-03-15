# Firefox Send is a brand name and should not be localized.
title = Firefox Send
siteFeedback = Tilbakemelding
importingFile = Importerer…
encryptingFile = Krypterer…
decryptingFile = Dekrypterer...
downloadCount =
    { $num ->
        [one] 1 nedlasting
       *[other] { $num } nedlastingar
    }
timespanHours =
    { $num ->
        [one] 1 time
       *[other] { $num } timar
    }
copiedUrl = Kopiert!
unlockInputPlaceholder = Passord
unlockButtonLabel = Lås opp
downloadButtonLabel = Last ned
downloadFinish = Nedlastinga er fullført.
fileSizeProgress = ({ $partialSize } av { $totalSize })
sendYourFilesLink = Prøv Firefox Send
errorPageHeader = Noko gjekk gale!
fileTooBig = Fila er for stor, og kan ikkje lastast opp. Ho må vere mindre enn { $size }.
linkExpiredAlt = Lenka har gått ut
notSupportedHeader = Nettlesaren din er ikkje støtta.
notSupportedLink = Kvifor er ikkje nettlesaren min støtta?
notSupportedOutdatedDetail = Dessverre støttar ikkje denne versjonen av Firefox nett-teknologien som driv Firefox Send. Du må å oppdatere nettlesaren din.
updateFirefox = Oppdater Firefox
deletePopupCancel = Avbryt
deleteButtonHover = Slett
footerLinkLegal = Juridisk informasjon
footerLinkPrivacy = Personvern
footerLinkCookies = Infokapslar
passwordTryAgain = Feil passord. Prøv på nytt.
javascriptRequired = Firefox Send krev JavaScript.
whyJavascript = Kvifor krev Firefox Send JavaScript?
enableJavascript = Slå på JavaScript og prøv igjen.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }t { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when the user enters a long password
maxPasswordLength = Maksimum passordlengde: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Dette passordet kunne ikkje stillast inn

## Send version 2 strings

# Firefox Send, Send, Firefox, Mozilla are proper names and should not be localized
-send-brand = Firefox Send
-send-short-brand = Send
-firefox = Firefox
-mozilla = Mozilla
introTitle = Enkel, privat fildeling
notifyUploadEncryptDone = Fila di er kryptert og klar til å bli sendt
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Går ut etter { $downloadCount } eller { $timespan }
timespanMinutes =
    { $num ->
        [one] 1 minutt
       *[other] { $num } minutt
    }
timespanDays =
    { $num ->
        [one] 1 dag
       *[other] { $num } dagar
    }
timespanWeeks =
    { $num ->
        [one] 1 veke
       *[other] { $num } veker
    }
fileCount =
    { $num ->
        [one] 1 fil
       *[other] { $num } filer
    }
# size is a localized number followed by a unit of bytes, ex. 2.5GB
totalSize = Total storleik: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Kopier lenka for å dele fila di:
copyLinkButton = Kopier lenke
downloadTitle = Last ned filer
trySendDescription = Prøv { -send-brand } for enkel og sikker fildeling.
# count will always be > 10
tooManyFiles =
    { $count ->
        [one] Berre 1 fil  kan lastast opp om gongen.
       *[other] Berre { $count } filer kan lastast opp om gongen.
    }
# count will always be > 10
tooManyArchives =
    { $count ->
        [one] Berre 1 arkiv er lov.
       *[other] Berre { $count } arkiv er lov.
    }
expiredTitle = Denne lenka har gått ut.
downloadFirefox = Last ned { -firefox }
legalTitle = { -send-short-brand }, om personvernpraksis
legalDateStamp = Versjon 1.0, datert den 12 mars 2019
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days }d { $hours }t { $minutes }m
addFilesButton = Vel filer som skal lastast opp
uploadButton = Last opp
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Dra og slepp filer
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# size is a localized number followed by a unit of bytes, ex. 2.5GB
orClickWithSize = eller klikk for å senda opp til { $size }
addPassword = Vern med passord
emailPlaceholder = Skriv inn e-postadressa di
# size is a localized number followed by a unit of bytes, ex. 2.5GB
signInSizeBump = LOgg inn for å senda opp til { $size }
signInButton = Logg inn/Registrer deg
accountBenefitTitle = Lag ein { -firefox }-konto eller logg inn
# size is a localized number followed by a unit of bytes, ex. 2.5GB
accountBenefitLargeFiles = Del filer opp til { $size }
accountBenefitDownloadCount = Del filer med fleire personar
accountBenefitTimeLimit =
    { $count ->
        [one] Hald lenka aktiv opp til 1 dag
       *[other] Hald lenker aktive opp til { $count } dagar
    }
accountBenefitSync = Handter delte filer frå alle einingar
accountBenefitMoz = Les om andre { -mozilla }-tenster
signOut = Logg ut
okButton = OK
downloadingTitle = Lastar ned
noStreamsWarning = Denne nettlesaren kan kanskje ikkje dekryptere ei så stor fil.
noStreamsOptionCopy = Kopier lenka for å opne henne i ein annan nettlesar
noStreamsOptionFirefox = Prøv favorittnettlesaren vår
noStreamsOptionDownload = Fortset med denne nettlesaren
