---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	reason = "reason-value"
	duration = "duration-value"
	ticketNumber = "ticketNumber-value"
	ticketSystem = "ticketSystem-value"
}

Invoke-MgSelfPrivilegedRoleActivate -PrivilegedRoleId $privilegedRoleId -BodyParameter $params

```