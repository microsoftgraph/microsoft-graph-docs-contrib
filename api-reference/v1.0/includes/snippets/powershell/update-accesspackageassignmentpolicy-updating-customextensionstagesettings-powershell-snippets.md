---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "API Created policy with updated customExtensionStageSettings"
	description = "policy with updated customExtensionStageSettings"
	allowedTargetScope = "notSpecified"
	specificAllowedTargets = @(
	)
	expiration = @{
		endDateTime = $null
		duration = $null
		type = "noExpiration"
	}
	requestorSettings = @{
		enableTargetsToSelfAddAccess = $false
		enableTargetsToSelfUpdateAccess = $false
		enableTargetsToSelfRemoveAccess = $false
		allowCustomAssignmentSchedule = $true
		enableOnBehalfRequestorsToAddAccess = $false
		enableOnBehalfRequestorsToUpdateAccess = $false
		enableOnBehalfRequestorsToRemoveAccess = $false
		onBehalfRequestors = @(
		)
	}
	requestApprovalSettings = @{
		isApprovalRequiredForAdd = $false
		isApprovalRequiredForUpdate = $false
		stages = @(
		)
	}
	accessPackage = @{
		id = "f9afd2e3-7486-40df-9c35-aa2ae108c495"
	}
	customExtensionStageSettings = @(
		@{
			stage = "assignmentRequestCreated"
			customExtension = @{
				"@odata.type" = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension"
				id = "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"
			}
		}
	)
}

Set-MgEntitlementManagementAssignmentPolicy -AccessPackageAssignmentPolicyId $accessPackageAssignmentPolicyId -BodyParameter $params

```