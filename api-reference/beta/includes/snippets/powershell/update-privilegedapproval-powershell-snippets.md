---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	ApprovalState = "approvalState-value"
	ApproverReason = "approverReason-value"
}

Update-MgPrivilegedApproval -PrivilegedApprovalId $privilegedApprovalId -BodyParameter $params

```