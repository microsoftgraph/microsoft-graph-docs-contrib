---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	source = "Contoso.CustoEXT"
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
	data = @{
		"@odata.type" = "microsoft.graph.microsoft.graph.assignmentRequestApprovalStageCallbackData"
		approvalStage = @{
			durationBeforeAutomaticDenial = "P2D"
			escalationApprovers = @(
			)
			fallbackEscalationApprovers = @(
			)
			fallbackPrimaryApprovers = @(
			)
			isApproverJustificationRequired = $false
			isEscalationEnabled = $false
			primaryApprovers = @(
				@{
					"@@odata.type" = "#microsoft.graph.singleUser"
					description = "Primary approver of access package assignment."
					id = ""
					isBackup = $false
				}
			)
		}
		customExtensionStageInstanceDetail = "A approval stage from Logic Apps"
		customExtensionStageInstanceId = "@{triggerBody()?['CustomExtensionStageInstanceId']}"
		stage = "assignmentRequestDeterminingApprovalRequirements"
	}
	source = "LogicApps"
	type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
}

Resume-MgBetaEntitlementManagementAccessPackageAssignmentRequest -AccessPackageAssignmentRequestId $accessPackageAssignmentRequestId -BodyParameter $params

```