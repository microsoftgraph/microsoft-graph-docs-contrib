---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConditionalAccessPolicy
{
	Conditions = new ConditionalAccessConditionSet
	{
		SignInRiskLevels = new List<RiskLevel?>
		{
			RiskLevel.High,
			RiskLevel.Medium,
			RiskLevel.Low,
		},
	},
};
var result = await graphClient.Identity.ConditionalAccess.Policies["{conditionalAccessPolicy-id}"].PatchAsync(requestBody);


```