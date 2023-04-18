---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "UserAdd"
	accessPackageAssignment = @{
		targetId = "007d1c7e-7fa8-4e33-b678-5e437acdcddc"
		assignmentPolicyId = "db440482-1210-4a60-9b55-3ac7a72f63ba"
		accessPackageId = "88203d16-0e31-41d4-87b2-dd402f1435e9"
	}
}

New-MgEntitlementManagementAccessPackageAssignmentRequest -BodyParameter $params

```