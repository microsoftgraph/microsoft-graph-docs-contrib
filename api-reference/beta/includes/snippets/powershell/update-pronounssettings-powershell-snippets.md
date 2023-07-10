---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	isEnabledInOrganization = $true
}

Update-MgBetaOrganizationSettingPronoun -OrganizationId $organizationId -BodyParameter $params

```