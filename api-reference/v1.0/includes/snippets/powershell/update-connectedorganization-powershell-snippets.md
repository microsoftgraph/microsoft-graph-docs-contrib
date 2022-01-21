---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "Connected organization new name"
	Description = "Connected organization new description"
	State = "configured"
}

Update-MgEntitlementManagementConnectedOrganization -ConnectedOrganizationId $connectedOrganizationId -BodyParameter $params

```