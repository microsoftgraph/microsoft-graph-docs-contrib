---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	id = "5540a08f-8ab5-43f6-a923-015275799197"
	displayName = "policy with access package custom workflow extension"
	description = "Run specified access package custom workflow extension at different stages."
	accessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
	expiration = @{
		type = "afterDuration"
		duration = "P365D"
	}
	requestApprovalSettings = $null
	requestorSettings = @{
		acceptRequests = $true
		scopeType = "AllExistingDirectorySubjects"
		allowedRequestors = @(
		)
	}
	accessReviewSettings = $null
	customExtensionStageSettings = @(
	)
}

Set-MgEntitlementManagementAssignmentPolicy -AccessPackageAssignmentPolicyId $accessPackageAssignmentPolicyId -BodyParameter $params

```