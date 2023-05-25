---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Policies.CrossTenantAccessPolicy.Partners.Item.IdentitySynchronization.IdentitySynchronizationPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"displayName" , "Fabrikam"
		},
		{
			"userSyncInbound" , new 
			{
				IsSyncAllowed = true,
			}
		},
	},
};
await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-tenantId}"].IdentitySynchronization.PutAsync(requestBody);


```