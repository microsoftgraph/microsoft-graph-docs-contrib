---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	annotations = @(
		@{
			localizations = @(
				@{
					languageTag = "no-NB"
					displayName = "Kostnads Senter"
				}
			)
		}
	)
}

Update-MgOrganizationSettingProfileCardProperty -OrganizationId $organizationId -ProfileCardPropertyId $profileCardPropertyId -BodyParameter $params

```