---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	RequestType = "AdminAdd"
	AccessPackageAssignment = @{
		Target = @{
			Email = "user@contoso.com"
		}
		AssignmentPolicyId = "2264bf65-76ba-417b-a27d-54d291f0cbc8"
		AccessPackageId = "a914b616-e04e-476b-aa37-91038f0b165b"
	}
}

New-MgEntitlementManagementAccessPackageAssignmentRequest -BodyParameter $params

```