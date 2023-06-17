---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	authoringLanguages = @(
		@{
			locale = "en-US"
		}
		@{
			locale = "es-MX"
		}
	)
	defaultRegionalFormat = @{
		locale = "en-US"
	}
}

# A UPN can also be used as -UserId.
Update-MgUserSettingRegionalAndLanguageSetting -UserId $userId -BodyParameter $params

```