---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.AppManagementPolicies.Item.AppManagementPolicie
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"
		},
	},
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppManagementPolicies["{appManagementPolicy-id}"].PostAsync(requestBody);


```