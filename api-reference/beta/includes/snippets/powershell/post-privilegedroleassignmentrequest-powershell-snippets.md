---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	duration = "2"
	reason = "Activate the role for business purpose"
	ticketNumber = "234"
	ticketSystem = "system"
	schedule = @{
		startDateTime = [System.DateTime]::Parse("2018-02-08T02:35:17.903Z")
	}
	type = "UserAdd"
	assignmentState = "Active"
	roleId = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
}

New-MgPrivilegedRoleAssignmentRequest -BodyParameter $params

```