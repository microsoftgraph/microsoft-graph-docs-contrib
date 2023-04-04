---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	RequestType = "UserAdd"
	AccessPackageAssignment = @{
		AccessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b"
	}
	Justification = "Need access to New Hire access package"
}

New-MgEntitlementManagementAccessPackageAssignmentRequest -BodyParameter $params

```