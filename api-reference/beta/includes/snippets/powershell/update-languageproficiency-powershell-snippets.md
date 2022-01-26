---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	AllowedAudiences = "organization"
}

Update-MgUserProfileLanguage -UserId $userId -LanguageProficiencyId $languageProficiencyId -BodyParameter $params

```