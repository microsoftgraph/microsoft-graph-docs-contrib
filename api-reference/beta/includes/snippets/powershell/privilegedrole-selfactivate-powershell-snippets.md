---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Reason = "reason-value"
	Duration = "duration-value"
	TicketNumber = "ticketNumber-value"
	TicketSystem = "ticketSystem-value"
}

Invoke-MgSelfPrivilegedRoleActivate -PrivilegedRoleId $privilegedRoleId -BodyParameter $params

```