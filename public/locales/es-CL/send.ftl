# Firefox Send is a brand name and should not be localized.
title = Firefox Send
siteFeedback = Comentarios
importingFile = Importando…
encryptingFile = Cifrando…
decryptingFile = Descifrando…
downloadCount =
    { $num ->
        [one] 1 descarga
       *[other] { $num } descargas
    }
timespanHours =
    { $num ->
        [one] 1 hora
       *[other] { $num } horas
    }
copiedUrl = ¡Copiado!
unlockInputPlaceholder = Contraseña
unlockButtonLabel = Desbloquear
downloadButtonLabel = Descargar
downloadFinish = Descarga completa
fileSizeProgress = ({ $partialSize } de { $totalSize })
sendYourFilesLink = Probar Firefox Send
errorPageHeader = ¡Algo se fue a las pailas!
fileTooBig = Ese archivo es muy grande para ser subido. Debiera tener un tamaño menor a { $size }.
linkExpiredAlt = Enlace expirado
notSupportedHeader = Tu navegador no está soportado.
notSupportedLink = ¿Por qué mi navegador no es soportado?
notSupportedOutdatedDetail = Lamentablemente esta versión de Firefox no soporta la tecnología web que potencia a Firefox Send. Deberás actualizar tu navegador.
updateFirefox = Actualizar Firefox
deletePopupCancel = Cancelar
deleteButtonHover = Eliminar
footerLinkLegal = Legal
footerLinkPrivacy = Privacidad
footerLinkCookies = Cookies
passwordTryAgain = Contraseña incorrecta. Vuelve a intentarlo.
javascriptRequired = Firefox Send requiere JavaScript.
whyJavascript = ¿Por qué Firefox Send requiere JavaScript?
enableJavascript = Por favor, activa JavaScript y vuelve a intentarlo.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }h { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when the user enters a long password
maxPasswordLength = Longitud máxima de la contraseña: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Esta contraseña no pudo ser establecida

## Send version 2 strings

# Firefox Send, Send, Firefox, Mozilla are proper names and should not be localized
-send-brand = Firefox Send
-send-short-brand = Send
-firefox = Firefox
-mozilla = Mozilla
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Expira después de { $downloadCount } o { $timespan }
timespanMinutes =
    { $num ->
        [one] 1 minuto
       *[other] { $num } minutos
    }
timespanDays =
    { $num ->
        [one] 1 día
       *[other] { $num } días
    }
timespanWeeks =
    { $num ->
        [one] 1 semana
       *[other] { $num } semanas
    }
fileCount =
    { $num ->
        [one] 1 archivo
       *[other] { $num } archivos
    }
# byte abbreviation
bytes = B
# kibibyte abbreviation
kb = KB
# mebibyte abbreviation
mb = MB
# gibibyte abbreviation
gb = GB
# localized number and byte abbreviation. example "2.5MB"
fileSize = { $num }{ $units }
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
totalSize = Tamaño total: { $size }
copyLinkButton = Copiar enlace
downloadTitle = Bajando archivos
expiredTitle = Este enlace ha expirado.
downloadFirefox = Bajar { -firefox }
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days }d { $hours }h { $minutes }m
addFilesButton = Selecciona los archivos a subir
uploadButton = Subir
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Arrastra y suelta archivos
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
orClickWithSize = o haz clic para enviar hasta { $size }
addPassword = Protegido con contraseña
emailPlaceholder = Ingresa tu correo
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
signInSizeBump = Conéctate para enviar hasta { $size }
signInButton = Conectarse/registrarse
accountBenefitTitle = Crea una cuenta de { -firefox } o conéctate
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
accountBenefitLargeFiles = Comparte archivos de hasta { $size }
accountBenefitDownloadCount = Comparte archivos con más personas
accountBenefitMoz = Aprender más acerca de otros servicios de { -mozilla }
signOut = Salir
okButton = Aceptar
downloadingTitle = Bajando
noStreamsWarning = Es posible que este navegador no pueda descifrar un archivo tan grande.
noStreamsOptionCopy = Copiar el enlace para abrirlo en otro navegador
noStreamsOptionFirefox = Prueba nuestro navegador favorito
noStreamsOptionDownload = Continuar con este navegador
