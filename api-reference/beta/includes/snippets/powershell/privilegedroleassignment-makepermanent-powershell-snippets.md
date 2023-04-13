---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	reason = "reason-value"
	ticketNumber = "ticketNumber-value"
	ticketSystem = "ticketSystem-value"
}

New-MgPrivilegedRoleAssignmentPermanent -PrivilegedRoleAssignmentId $privilegedRoleAssignmentId -BodyParameter $params

```