---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
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
	directoryPropertyName = "CustomAttribute1"
	isVisible = $true
}

New-MgAdminPeopleProfileCardProperty -BodyParameter $params

```