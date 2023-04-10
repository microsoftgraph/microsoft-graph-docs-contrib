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
		Stage = "AssignmentRequestCreated"
		CustomExtensionStageInstanceId = "857d0c50-466b-4840-bb5b-c92cea7141ff"
		State = "denied"
		CustomExtensionStageInstanceDetail = "Potential risk user based on the SOD check"
	}
}

Resume-MgEntitlementManagementAccessPackageAssignmentRequest -AccessPackageAssignmentRequestId $accessPackageAssignmentRequestId -BodyParameter $params

```