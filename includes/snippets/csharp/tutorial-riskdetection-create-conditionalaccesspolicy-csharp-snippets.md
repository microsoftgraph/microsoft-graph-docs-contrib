---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessPolicy = new ConditionalAccessPolicy
{
	DisplayName = "Policy for risky sign-in block access",
	State = ConditionalAccessPolicyState.Enabled,
	Conditions = new ConditionalAccessConditionSet
	{
		SignInRiskLevels = new List<RiskLevel>()
		{
			RiskLevel.High,
			RiskLevel.Medium
		},
		Applications = new ConditionalAccessApplications
		{
			IncludeApplications = new List<String>()
			{
				"All"
			}
		},
		Users = new ConditionalAccessUsers
		{
			IncludeUsers = new List<String>()
			{
				"4628e7df-dff3-407c-a08f-75f08c0806dc"
			}
		}
	},
	GrantControls = new ConditionalAccessGrantControls
	{
		Operator = "OR",
		BuiltInControls = new List<ConditionalAccessGrantControl>()
		{
			ConditionalAccessGrantControl.Block
		}
	}
};

await graphClient.Identity.ConditionalAccess.Policies
	.Request()
	.AddAsync(conditionalAccessPolicy);

```