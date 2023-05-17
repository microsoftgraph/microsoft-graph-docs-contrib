---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Applications.Item.AppManagementPolicies.Ref.$refDeleteRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}"
		},
	},
};
await graphClient.Applications["{application-id}"].AppManagementPolicies.Ref.DeleteAsync(requestBody);


```