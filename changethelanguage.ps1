
# Display the language names and codes
$languages | ForEach-Object {
    Write-Host $_.LanguageTag - $_.DisplayName
}

# Prompt user for new language code
$NewLanguage = Read-Host "Enter the language code you want to switch to (e.g. en-US)"

# Change language
Set-WinUserLanguageList $NewLanguage -Force
# Get updated language
$languages = Get-WinUserLanguageList
