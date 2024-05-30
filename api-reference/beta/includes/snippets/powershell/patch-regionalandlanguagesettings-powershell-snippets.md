---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

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
Update-MgBetaUserSettingRegionalAndLanguageSetting -UserId $userId -BodyParameter $params

```