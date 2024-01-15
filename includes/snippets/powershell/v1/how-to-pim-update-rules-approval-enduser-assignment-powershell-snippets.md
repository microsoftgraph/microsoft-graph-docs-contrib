---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule"
	id = "Approval_EndUser_Assignment"
	target = @{
		"@odata.type" = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
		caller = "EndUser"
		operations = @(
			"All"
		)
		level = "Assignment"
		inheritableSettings = @(
		)
		enforcedSettings = @(
		)
	}
	setting = @{
		"@odata.type" = "microsoft.graph.approvalSettings"
		isApprovalRequired = $true
		isApprovalRequiredForExtension = $false
		isRequestorJustificationRequired = $true
		approvalMode = "SingleStage"
		approvalStages = @(
			@{
				"@odata.type" = "microsoft.graph.unifiedApprovalStage"
				approvalStageTimeOutInDays = 
				isApproverJustificationRequired = $true
				escalationTimeInMinutes = 
				primaryApprovers = @(
					@{
						"@odata.type" = "#microsoft.graph.singleUser"
						userId = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
					}
					@{
						"@odata.type" = "#microsoft.graph.groupMembers"
						groupId = "14f2746d-7d6f-4ac6-acd8-8cac318b041b"
					}
				)
				isEscalationEnabled = $false
				escalationApprovers = @(
				)
			}
		)
	}
}

Update-MgPolicyRoleManagementPolicyRule -UnifiedRoleManagementPolicyId $unifiedRoleManagementPolicyId -UnifiedRoleManagementPolicyRuleId $unifiedRoleManagementPolicyRuleId -BodyParameter $params

```