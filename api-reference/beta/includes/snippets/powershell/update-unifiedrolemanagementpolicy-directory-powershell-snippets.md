---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	rules = @(
		@{
			"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule"
			id = "Approval_EndUser_Assignment"
			target = @{
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
		}
		@{
			"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule"
			id = "AuthenticationContext_EndUser_Assignment"
			isEnabled = $false
			claimValue = ""
			target = @{
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
		}
		@{
			"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule"
			id = "Enablement_Admin_Eligibility"
			enabledRules = @(
			)
			target = @{
				caller = "Admin"
				operations = @(
					"All"
				)
				level = "Eligibility"
				inheritableSettings = @(
				)
				enforcedSettings = @(
				)
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule"
			id = "Expiration_Admin_Eligibility"
			isExpirationRequired = $false
			maximumDuration = "P365D"
			target = @{
				caller = "Admin"
				operations = @(
					"All"
				)
				level = "Eligibility"
				inheritableSettings = @(
				)
				enforcedSettings = @(
				)
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule"
			id = "Notification_Admin_Admin_Eligibility"
			notificationType = "Email"
			recipientType = "Admin"
			notificationLevel = "All"
			isDefaultRecipientsEnabled = $true
			notificationRecipients = @(
			)
			target = @{
				caller = "Admin"
				operations = @(
					"All"
				)
				level = "Eligibility"
				inheritableSettings = @(
				)
				enforcedSettings = @(
				)
			}
		}
	)
}

Update-MgBetaPolicyRoleManagementPolicy -UnifiedRoleManagementPolicyId $unifiedRoleManagementPolicyId -BodyParameter $params

```