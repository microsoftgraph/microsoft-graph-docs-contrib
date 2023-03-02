---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConditionalAccessPolicy
{
	DisplayName = "Policy for risky sign-in block access",
	State = ConditionalAccessPolicyState.Enabled,
	Conditions = new ConditionalAccessConditionSet
	{
		SignInRiskLevels = new List<RiskLevel?>
		{
			RiskLevel.High,
			RiskLevel.Medium,
		},
		Applications = new ConditionalAccessApplications
		{
			IncludeApplications = new List<string>
			{
				"All",
			},
		},
		Users = new ConditionalAccessUsers
		{
			IncludeUsers = new List<string>
			{
				"4628e7df-dff3-407c-a08f-75f08c0806dc",
			},
		},
	},
	GrantControls = new ConditionalAccessGrantControls
	{
		Operator = "OR",
		BuiltInControls = new List<ConditionalAccessGrantControl?>
		{
			ConditionalAccessGrantControl.Block,
		},
	},
};
var result = await graphClient.Identity.ConditionalAccess.Policies.PostAsync(requestBody);


```