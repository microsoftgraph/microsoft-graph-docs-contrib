---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule"
	Id = "Approval_EndUser_Assignment"
	Target = @{
		"@odata.type" = "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
		Caller = "EndUser"
		Operations = @(
			"All"
		)
		Level = "Assignment"
		InheritableSettings = @(
		)
		EnforcedSettings = @(
		)
	}
	Setting = @{
		"@odata.type" = "microsoft.graph.approvalSettings"
		IsApprovalRequired = $true
		IsApprovalRequiredForExtension = $false
		IsRequestorJustificationRequired = $true
		ApprovalMode = "SingleStage"
		ApprovalStages = @(
			@{
				"@odata.type" = "microsoft.graph.unifiedApprovalStage"
				ApprovalStageTimeOutInDays = 
				IsApproverJustificationRequired = $true
				EscalationTimeInMinutes = 
				PrimaryApprovers = @(
					@{
						"@odata.type" = "#microsoft.graph.singleUser"
						UserId = "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
					}
					@{
						"@odata.type" = "#microsoft.graph.groupMembers"
						GroupId = "14f2746d-7d6f-4ac6-acd8-8cac318b041b"
					}
				)
				IsEscalationEnabled = $false
				EscalationApprovers = @(
				)
			}
		)
	}
}

Update-MgPolicyRoleManagementPolicyRule -UnifiedRoleManagementPolicyId $unifiedRoleManagementPolicyId -UnifiedRoleManagementPolicyRuleId $unifiedRoleManagementPolicyRuleId -BodyParameter $params

```