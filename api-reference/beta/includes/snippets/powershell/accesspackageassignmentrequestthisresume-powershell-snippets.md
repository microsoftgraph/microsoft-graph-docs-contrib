---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	Source = "Contoso.SodCheckProcess"
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
	Data = @{
		"@odata.type" = "microsoft.graph.accessPackageAssignmentRequestCallbackData"
		Stage = "assignmentRequestCreated"
		CustomExtensionStageInstanceId = "957d0c50-466b-4840-bb5b-c92cea7141ff"
		CustomExtensionStageInstanceDetail = "This user is all verified"
	}
}

Resume-MgEntitlementManagementAccessPackageAssignmentRequest -AccessPackageAssignmentRequestId $accessPackageAssignmentRequestId -BodyParameter $params

```