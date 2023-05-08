---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConditionalAccessPolicy
{
	DisplayName = "Require MFA to EXO from non-complaint devices.",
	State = ConditionalAccessPolicyState.Enabled,
	Conditions = new ConditionalAccessConditionSet
	{
		Applications = new ConditionalAccessApplications
		{
			IncludeApplications = new List<string>
			{
				"00000002-0000-0ff1-ce00-000000000000",
			},
		},
		Users = new ConditionalAccessUsers
		{
			IncludeGroups = new List<string>
			{
				"ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba",
			},
		},
		Devices = new ConditionalAccessDevices
		{
			IncludeDevices = new List<string>
			{
				"All",
			},
			ExcludeDevices = new List<string>
			{
				"Compliant",
			},
		},
	},
	GrantControls = new ConditionalAccessGrantControls
	{
		Operator = "OR",
		BuiltInControls = new List<ConditionalAccessGrantControl?>
		{
			ConditionalAccessGrantControl.Mfa,
		},
	},
};
var result = await graphClient.Identity.ConditionalAccess.Policies.PostAsync(requestBody);


```