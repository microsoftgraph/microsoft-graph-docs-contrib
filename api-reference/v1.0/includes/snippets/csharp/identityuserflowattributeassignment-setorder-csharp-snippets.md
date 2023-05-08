---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Identity.B2xUserFlows.Item.UserAttributeAssignments.SetOrder.SetOrderPostRequestBody
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
await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].UserAttributeAssignments.SetOrder.PostAsync(requestBody);


```