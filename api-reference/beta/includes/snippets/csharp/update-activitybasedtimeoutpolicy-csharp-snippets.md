---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ActivityBasedTimeoutPolicy
{
	Definition = new List<string>
	{
		"definition-value",
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true,
};
var result = await graphClient.Policies.ActivityBasedTimeoutPolicies["{activityBasedTimeoutPolicy-id}"].PatchAsync(requestBody);


```