---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleManagementPolicy
{
	Rules = new List<UnifiedRoleManagementPolicyRule>
	{
		new UnifiedRoleManagementPolicyRule
		{
			OdataType = "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
			Id = "Approval_EndUser_Assignment",
			Target = new UnifiedRoleManagementPolicyRuleTarget
			{
				Caller = "EndUser",
				Operations = new List<string>
				{
					"All",
				},
				Level = "Assignment",
				InheritableSettings = new List<String>
				{
				},
				EnforcedSettings = new List<String>
				{
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"setting" , new 
					{
						IsApprovalRequired = false,
						IsApprovalRequiredForExtension = false,
						IsRequestorJustificationRequired = true,
						ApprovalMode = "SingleStage",
						ApprovalStages = new List<>
						{
							new 
							{
								ApprovalStageTimeOutInDays = 1,
								IsApproverJustificationRequired = true,
								EscalationTimeInMinutes = 0,
								IsEscalationEnabled = false,
								PrimaryApprovers = new List<>
								{
								},
								EscalationApprovers = new List<>
								{
								},
							},
						},
					}
				},
			},
		},
		new UnifiedRoleManagementPolicyRule
		{
			OdataType = "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
			Id = "AuthenticationContext_EndUser_Assignment",
			Target = new UnifiedRoleManagementPolicyRuleTarget
			{
				Caller = "EndUser",
				Operations = new List<string>
				{
					"All",
				},
				Level = "Assignment",
				InheritableSettings = new List<String>
				{
				},
				EnforcedSettings = new List<String>
				{
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"isEnabled" , false
				},
				{
					"claimValue" , ""
				},
			},
		},
		new UnifiedRoleManagementPolicyRule
		{
			OdataType = "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
			Id = "Enablement_Admin_Eligibility",
			Target = new UnifiedRoleManagementPolicyRuleTarget
			{
				Caller = "Admin",
				Operations = new List<string>
				{
					"All",
				},
				Level = "Eligibility",
				InheritableSettings = new List<String>
				{
				},
				EnforcedSettings = new List<String>
				{
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"enabledRules" , new List<>
					{
					}
				},
			},
		},
		new UnifiedRoleManagementPolicyRule
		{
			OdataType = "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
			Id = "Expiration_Admin_Eligibility",
			Target = new UnifiedRoleManagementPolicyRuleTarget
			{
				Caller = "Admin",
				Operations = new List<string>
				{
					"All",
				},
				Level = "Eligibility",
				InheritableSettings = new List<String>
				{
				},
				EnforcedSettings = new List<String>
				{
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"isExpirationRequired" , false
				},
				{
					"maximumDuration" , "P365D"
				},
			},
		},
		new UnifiedRoleManagementPolicyRule
		{
			OdataType = "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
			Id = "Notification_Admin_Admin_Eligibility",
			Target = new UnifiedRoleManagementPolicyRuleTarget
			{
				Caller = "Admin",
				Operations = new List<string>
				{
					"All",
				},
				Level = "Eligibility",
				InheritableSettings = new List<String>
				{
				},
				EnforcedSettings = new List<String>
				{
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"notificationType" , "Email"
				},
				{
					"recipientType" , "Admin"
				},
				{
					"notificationLevel" , "All"
				},
				{
					"isDefaultRecipientsEnabled" , true
				},
				{
					"notificationRecipients" , new List<>
					{
					}
				},
			},
		},
	},
};
var result = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].PatchAsync(requestBody);


```