---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "UserAdd"
	accessPackageAssignment = @{
		accessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b"
	}
	justification = "Need access to New Hire access package"
}

New-MgEntitlementManagementAccessPackageAssignmentRequest -BodyParameter $params

```