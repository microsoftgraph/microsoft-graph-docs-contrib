---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	Annotations = @(
		@{
			Localizations = @(
				@{
					LanguageTag = "no-NB"
					DisplayName = "Kostnads Senter"
				}
			)
		}
	)
}

Update-MgOrganizationSettingProfileCardProperty -OrganizationId $organizationId -ProfileCardPropertyId $profileCardPropertyId -BodyParameter $params

```