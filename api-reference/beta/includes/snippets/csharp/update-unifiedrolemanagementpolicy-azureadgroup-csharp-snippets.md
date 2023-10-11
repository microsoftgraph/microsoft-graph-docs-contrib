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
						IsApprovalRequired = true,
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
									new 
									{
										OdataType = "#microsoft.graph.singleUser",
										IsBackup = false,
										Id = "c277c8cb-6bb7-42e5-a17f-0add9a718151",
										Description = null,
									},
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
					"isExpirationRequired" , true
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