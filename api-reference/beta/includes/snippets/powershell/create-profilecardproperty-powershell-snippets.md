---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	directoryPropertyName = "CustomAttribute1"
	annotations = @(
		@{
			displayName = "Cost Center"
			localizations = @(
				@{
					languageTag = "ru"
					displayName = "центр затрат"
				}
			)
		}
	)
}

New-MgBetaAdminPeopleProfileCardProperty -BodyParameter $params

```