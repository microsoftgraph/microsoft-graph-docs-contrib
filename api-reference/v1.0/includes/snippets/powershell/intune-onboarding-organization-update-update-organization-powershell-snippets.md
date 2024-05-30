---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.organization"
	mobileDeviceManagementAuthority = "intune"
}

Update-MgOrganization -OrganizationId $organizationId -BodyParameter $params

```