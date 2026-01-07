---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	source = "Contoso.AADProcess"
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
	data = @{
		"@odata.type" = "microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration"
		stage = "assignmentRequestCreated"
		customExtensionStageInstanceId = "7bf58d34-b3f9-4bae-8deb-abcd25cddea1"
		customExtensionStageInstanceDetail = "Completed."
	}
}

Resume-MgBetaEntitlementManagementAccessPackageAssignmentRequest -AccessPackageAssignmentRequestId $accessPackageAssignmentRequestId -BodyParameter $params

```