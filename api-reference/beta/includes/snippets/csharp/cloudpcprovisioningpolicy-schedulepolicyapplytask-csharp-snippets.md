---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.Item.SchedulePolicyApplyTask;

var requestBody = new SchedulePolicyApplyTaskPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"reservePercentage" , 50
		},
		{
			"cronScheduleExpression" , "0 0 0 20 * *"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].SchedulePolicyApplyTask.PostAsync(requestBody);


```