---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	RoleDefinitionId = "70521f3e-3b95-4e51-b4d2-a2f485b02103"
	ResourceId = "e5e7d29d-5465-45ac-885f-4716a5ee74b5"
	SubjectId = "1566d11d-d2b6-444a-a8de-28698682c445"
	AssignmentState = "Eligible"
	Type = "AdminUpdate"
	Schedule = @{
		Type = "Once"
		StartDateTime = [System.DateTime]::Parse("2018-03-08T05:42:45.317Z")
		EndDateTime = [System.DateTime]::Parse("2018-06-05T05:42:31.000Z")
	}
}

New-MgPrivilegedAccessRoleAssignmentRequest -PrivilegedAccessId $privilegedAccessId -BodyParameter $params

```