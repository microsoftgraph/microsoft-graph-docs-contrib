---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	allowedAudiences = "organization"
}

# A UPN can also be used as -UserId.
Update-MgUserProfileLanguage -UserId $userId -LanguageProficiencyId $languageProficiencyId -BodyParameter $params

```