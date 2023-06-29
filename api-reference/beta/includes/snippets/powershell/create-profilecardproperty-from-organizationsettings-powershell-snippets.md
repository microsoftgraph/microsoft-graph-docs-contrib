---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	directoryPropertyName = "CustomAttribute1"
	annotations = @(
		@{
			displayName = "Cost Center"
			localizations = @(
				@{
					languageTag = "ru-RU"
					displayName = "центр затрат"
				}
			)
		}
	)
}

New-MgOrganizationSettingProfileCardProperty -OrganizationId $organizationId -BodyParameter $params

```