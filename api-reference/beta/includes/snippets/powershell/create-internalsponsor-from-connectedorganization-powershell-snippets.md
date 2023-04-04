---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/{id}"
}

New-MgEntitlementManagementConnectedOrganizationInternalSponsorByRef -ConnectedOrganizationId $connectedOrganizationId -BodyParameter $params

```