---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	requestType = "adminRemove"
	assignment = @{
		id = "a6bb6942-3ae1-4259-9908-0133aaee9377"
	}
}

New-MgBetaEntitlementManagementAssignmentRequest -BodyParameter $params

```