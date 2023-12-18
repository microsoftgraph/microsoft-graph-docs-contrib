---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Identity.B2cUserFlows.Item.UserAttributeAssignments.SetOrder;
using Microsoft.Graph.Beta.Models;

var requestBody = new SetOrderPostRequestBody
{
	NewAssignmentOrder = new AssignmentOrder
	{
		Order = new List<string>
		{
			"City",
			"extension_GUID_ShoeSize",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].UserAttributeAssignments.SetOrder.PostAsync(requestBody);


```