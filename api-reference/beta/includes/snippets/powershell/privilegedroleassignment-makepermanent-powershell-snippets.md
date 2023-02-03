---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Reason = "reason-value"
	TicketNumber = "ticketNumber-value"
	TicketSystem = "ticketSystem-value"
}

New-MgPrivilegedRoleAssignmentPermanent -PrivilegedRoleAssignmentId $privilegedRoleAssignmentId -BodyParameter $params

```