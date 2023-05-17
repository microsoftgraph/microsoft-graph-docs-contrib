---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ServicePrincipals.Item.AppManagementPolicies.Item.AppManagementPolicie
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}"
		},
	},
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppManagementPolicies["{appManagementPolicy-id}"].PostAsync(requestBody);


```