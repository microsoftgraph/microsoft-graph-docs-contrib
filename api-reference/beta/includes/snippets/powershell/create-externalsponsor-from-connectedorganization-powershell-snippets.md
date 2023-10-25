---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/{id}"
}

New-MgBetaEntitlementManagementConnectedOrganizationExternalSponsorByRef -ConnectedOrganizationId $connectedOrganizationId -BodyParameter $params

```