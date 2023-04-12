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
		stage = "AssignmentRequestCreated"
		customExtensionStageInstanceId = "857d0c50-466b-4840-bb5b-c92cea7141ff"
		state = "denied"
		customExtensionStageInstanceDetail = "Potential risk user based on the SOD check"
	}
}

Resume-MgEntitlementManagementAccessPackageAssignmentRequest -AccessPackageAssignmentRequestId $accessPackageAssignmentRequestId -BodyParameter $params

```