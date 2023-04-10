---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Id = "5540a08f-8ab5-43f6-a923-015275799197"
	DisplayName = "policy with access package custom workflow extension"
	Description = "Run specified access package custom workflow extension at different stages."
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
	RequestApprovalSettings = $null
	RequestorSettings = @{
		AcceptRequests = $true
		ScopeType = "AllExistingDirectorySubjects"
		AllowedRequestors = @(
		)
	}
	AccessReviewSettings = $null
	CustomExtensionHandlers = @(
	)
}

Set-MgEntitlementManagementAccessPackageAssignmentPolicy -AccessPackageAssignmentPolicyId $accessPackageAssignmentPolicyId -BodyParameter $params

```