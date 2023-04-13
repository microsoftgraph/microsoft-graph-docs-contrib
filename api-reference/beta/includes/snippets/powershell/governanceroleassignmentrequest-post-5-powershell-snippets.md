---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	roleDefinitionId = "70521f3e-3b95-4e51-b4d2-a2f485b02103"
	resourceId = "e5e7d29d-5465-45ac-885f-4716a5ee74b5"
	subjectId = "1566d11d-d2b6-444a-a8de-28698682c445"
	assignmentState = "Eligible"
	type = "AdminUpdate"
	schedule = @{
		type = "Once"
		startDateTime = [System.DateTime]::Parse("2018-03-08T05:42:45.317Z")
		endDateTime = [System.DateTime]::Parse("2018-06-05T05:42:31.000Z")
	}
}

New-MgPrivilegedAccessRoleAssignmentRequest -PrivilegedAccessId $privilegedAccessId -BodyParameter $params

```