---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	approvalState = "approvalState-value"
	approverReason = "approverReason-value"
}

Update-MgPrivilegedApproval -PrivilegedApprovalId $privilegedApprovalId -BodyParameter $params

```