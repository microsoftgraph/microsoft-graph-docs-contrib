---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	userId = "userId-value"
	roleId = "roleId-value"
	approvalType = "approvalType-value"
	approvalState = "approvalState-value"
	approvalDuration = "datetime-value"
}

New-MgPrivilegedApproval -BodyParameter $params

```