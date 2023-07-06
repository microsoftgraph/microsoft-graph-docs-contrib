---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

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

Update-MgBetaOrganizationSettingProfileCardProperty -OrganizationId $organizationId -ProfileCardPropertyId $profileCardPropertyId -BodyParameter $params

```