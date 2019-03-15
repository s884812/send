# Firefox Send is a brand name and should not be localized.
title = Firefox Send
siteSubtitle = web experiment
siteFeedback = Feedback
uploadPageHeader = Private, Encrypted File Sharing
uploadPageExplainer = Send files through a safe, private, and encrypted link that automatically expires to ensure your stuff does not remain online forever.
uploadPageLearnMore = Learn more
uploadPageDropMessage = Drop your file here to start uploading
uploadPageSizeMessage = For the most reliable operation, it’s best to keep your file under 1GB
uploadPageBrowseButton = Select a file on your computer
uploadPageBrowseButton1 = Select a file to upload
uploadPageMultipleFilesAlert = Uploading multiple files or a folder is currently not supported.
uploadPageBrowseButtonTitle = Upload file
uploadingPageProgress = Uploading { $filename } ({ $size })
importingFile = Importing…
verifyingFile = Verifying…
encryptingFile = Encrypting…
decryptingFile = Decrypting…
notifyUploadDone = Your upload has finished.
uploadingPageMessage = Once your file uploads you will be able to set expiry options.
uploadingPageCancel = Cancel upload
uploadCancelNotification = Your upload was cancelled.
uploadingPageLargeFileMessage = This file is large and may take a while to upload. Sit tight!
uploadingFileNotification = Notify me when the upload is complete.
uploadSuccessConfirmHeader = Ready to Send
uploadSvgAlt = Upload
uploadSuccessTimingHeader = The link to your file will expire after 1 download or in 24 hours.
expireInfo = The link to your file will expire after { $downloadCount } or { $timespan }.
downloadCount =
    { $num ->
        [one] 1 download
       *[other] { $num } downloads
    }
timespanHours =
    { $num ->
        [one] 1 hour
       *[other] { $num } hours
    }
copyUrlFormLabelWithName = Copy and share the link to send your file: { $filename }
copyUrlFormButton = Copy to clipboard
copiedUrl = Copied!
deleteFileButton = Delete file
sendAnotherFileLink = Send another file
# Alternative text used on the download link/button (indicates an action).
downloadAltText = Download
downloadsFileList = Downloads
# Used as header in a column indicating the amount of time left before a
# download link expires (e.g. "10h 5m")
timeFileList = Time
# Used as header in a column indicating the number of times a file has been
# downloaded
downloadFileName = Download { $filename }
downloadFileSize = ({ $size })
unlockInputLabel = Enter Password
unlockInputPlaceholder = Password
unlockButtonLabel = Unlock
downloadFileTitle = Download Encrypted File
# Firefox Send is a brand name and should not be localized.
downloadMessage = Your friend is sending you a file with Firefox Send, a service that allows you to share files with a safe, private, and encrypted link that automatically expires to ensure your stuff does not remain online forever.
# Text and title used on the download link/button (indicates an action).
downloadButtonLabel = Download
downloadNotification = Your download has completed.
downloadFinish = Download Complete
# This message is displayed when uploading or downloading a file, e.g. "(1,3 MB of 10 MB)".
fileSizeProgress = ({ $partialSize } of { $totalSize })
# Firefox Send is a brand name and should not be localized.
sendYourFilesLink = Try Firefox Send
downloadingPageProgress = Downloading { $filename } ({ $size })
downloadingPageMessage = Please leave this tab open while we fetch your file and decrypt it.
errorAltText = Upload error
errorPageHeader = Something went wrong!
errorPageMessage = There has been an error uploading the file.
errorPageLink = Send another file
fileTooBig = That file is too big to upload. It should be less than { $size }.
linkExpiredAlt = Link expired
expiredPageHeader = This link has expired or never existed in the first place!
notSupportedHeader = Your browser is not supported.
# Firefox Send is a brand name and should not be localized.
notSupportedDetail = Unfortunately this browser does not support the web technology that powers Firefox Send. You’ll need to try another browser. We recommend Firefox!
notSupportedLink = Why is my browser not supported?
notSupportedOutdatedDetail = Unfortunately this version of Firefox does not support the web technology that powers Firefox Send. You’ll need to update your browser.
updateFirefox = Update Firefox
downloadFirefoxButtonSub = Free Download
uploadedFile = File
copyFileList = Copy URL
# expiryFileList is used as a column header
expiryFileList = Expires In
deleteFileList = Delete
nevermindButton = Never mind
legalHeader = Terms & Privacy
legalNoticeTestPilot = Firefox Send is currently a Test Pilot experiment, and subject to the Test Pilot <a>Terms of Service</a> and <a>Privacy Notice</a>. You can learn more about this experiment and its data collection <a>here</a>.
legalNoticeMozilla = Use of the Firefox Send web site is also subject to Mozilla’s <a>Websites Privacy Notice</a> and <a>Websites Terms of Use</a>.
deletePopupText = Delete this file?
deletePopupYes = Yes
deletePopupCancel = Cancel
deleteButtonHover = Delete
copyUrlHover = Copy URL
footerLinkLegal = Legal
# Test Pilot is a proper name and should not be localized.
footerLinkAbout = About Test Pilot
footerLinkPrivacy = Privacy
footerLinkTerms = Terms
footerLinkCookies = Cookies
requirePasswordCheckbox = Require a password to download this file
addPasswordButton = Add password
changePasswordButton = Change
passwordTryAgain = Incorrect password. Try again.
reportIPInfringement = Report IP Infringement
javascriptRequired = Firefox Send requires JavaScript
whyJavascript = Why does Firefox Send require JavaScript?
enableJavascript = Please enable JavaScript and try again.
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }h { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }m
# A short status message shown when a password is successfully set
passwordIsSet = Password set
# A short status message shown when the user enters a long password
maxPasswordLength = Maximum password length: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = This password could not be set

## New strings for the vNext version of Firefox Send

# Firefox Send, Send, Firefox, Mozilla are proper names and should not be localized
-send-brand = Firefox Send
-send-short-brand = Send
-firefox = Firefox
-mozilla = Mozilla
introTitle = Simple, private file sharing
introDescription = { -send-brand } lets you share files with end-to-end encryption and a link that automatically expires. So you can keep what you share private and make sure your stuff doesn’t stay online forever.
notifyUploadEncryptDone = Your file is encrypted and ready to send
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Expires after { $downloadCount } or { $timespan }
timespanMinutes =
    { $num ->
        [one] 1 minute
       *[other] { $num } minutes
    }
timespanDays =
    { $num ->
        [one] 1 day
       *[other] { $num } days
    }
timespanWeeks =
    { $num ->
        [one] 1 week
       *[other] { $num } weeks
    }
fileCount =
    { $num ->
        [one] 1 file
       *[other] { $num } files
    }
# size is a localized number followed by a unit of bytes, ex. 2.5GB
totalSize = Total size: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Copy the link to share your file:
copyLinkButton = Copy link
downloadTitle = Download files
downloadDescription = This file was shared via { -send-brand } with end-to-end encryption and a link that automatically expires.
trySendDescription = Try { -send-brand } for simple, safe file sharing.
# count will always be > 10
tooManyFiles =
    { $count ->
        [one] Only 1 file can be uploaded at a time.
       *[other] Only { $count } files can be uploaded at a time.
    }
# count will always be > 10
tooManyArchives =
    { $count ->
        [one] Only 1 archive is allowed.
       *[other] Only { $count } archives are allowed.
    }
expiredTitle = This link has expired.
notSupportedDescription = { -send-brand } will not work with this browser. { -send-short-brand } works best with the latest version of { -firefox }, and will work with the current version of most browsers.
downloadFirefox = Download { -firefox }
legalTitle = { -send-short-brand } Privacy Notice
legalDateStamp = Version 1.0, dated March 12, 2019
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days }d { $hours }h { $minutes }m
addFilesButton = Select files to upload
uploadButton = Upload
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Drag and drop files
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# size is a localized number followed by a unit of bytes, ex. 2.5GB
orClickWithSize = or click to send up to { $size }
addPassword = Protect with password
emailPlaceholder = Enter your email
# size is a localized number followed by a unit of bytes, ex. 2.5GB
signInSizeBump = Sign in to send up to { $size }
signInButton = Sign in/up
accountBenefitTitle = Create a { -firefox } Account or sign in
# size is a localized number followed by a unit of bytes, ex. 2.5GB
accountBenefitLargeFiles = Share files up to { $size }
accountBenefitDownloadCount = Share files with more people
accountBenefitTimeLimit =
    { $count ->
        [one] Keep links active for up to 1 day
       *[other] Keep links active for up to { $count } days
    }
accountBenefitSync = Manage shared files from any device
accountBenefitMoz = Learn about other { -mozilla } services
signOut = Sign out
okButton = OK
downloadingTitle = Downloading
noStreamsWarning = This browser might not be able to decrypt a file this big.
noStreamsOptionCopy = Copy the link to open in another browser
noStreamsOptionFirefox = Try our favourite browser
noStreamsOptionDownload = Continue with this browser
