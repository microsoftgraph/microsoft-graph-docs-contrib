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
					languageTag = "nb-NO"
					displayName = "Kostnadssenter"
				}
			)
		}
	)
}

Update-MgAdminPeopleProfileCardProperty -ProfileCardPropertyId $profileCardPropertyId -BodyParameter $params

```