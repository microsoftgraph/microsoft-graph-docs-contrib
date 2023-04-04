---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	AccessPackageId = "56ff43fd-6b05-48df-9634-956a777fce6d"
	DisplayName = "direct"
	Description = "direct assignments by administrator"
	AccessReviewSettings = $null
	RequestorSettings = @{
		ScopeType = "NoSubjects"
		AcceptRequests = $true
		AllowedRequestors = @(
		)
	}
	RequestApprovalSettings = @{
		IsApprovalRequired = $false
		IsApprovalRequiredForExtension = $false
		IsRequestorJustificationRequired = $false
		ApprovalMode = "NoApproval"
		ApprovalStages = @(
		)
	}
}

New-MgEntitlementManagementAccessPackageAssignmentPolicy -BodyParameter $params

```