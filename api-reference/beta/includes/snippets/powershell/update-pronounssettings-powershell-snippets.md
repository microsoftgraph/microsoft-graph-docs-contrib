---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	isEnabledInOrganization = $true
}

Update-MgOrganizationSettingPronoun -OrganizationId $organizationId -BodyParameter $params

```