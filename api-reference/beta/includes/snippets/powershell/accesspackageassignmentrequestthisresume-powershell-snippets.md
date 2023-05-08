---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	source = "Contoso.SodCheckProcess"
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
	data = @{
		"@odata.type" = "microsoft.graph.accessPackageAssignmentRequestCallbackData"
		stage = "assignmentRequestCreated"
		customExtensionStageInstanceId = "957d0c50-466b-4840-bb5b-c92cea7141ff"
		customExtensionStageInstanceDetail = "This user is all verified"
	}
}

Resume-MgEntitlementManagementAccessPackageAssignmentRequest -AccessPackageAssignmentRequestId $accessPackageAssignmentRequestId -BodyParameter $params

```