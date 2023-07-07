---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.Synchronization.Secrets.SynchronizationSecretKeyStringValuePair
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"value" , new List<object>
			{
				new 
				{
					Key = "BaseAddress",
					Value = "user@domain.com",
				},
				new 
				{
					Key = "SecretToken",
					Value = "password-value",
				},
				new 
				{
					Key = "SyncNotificationSettings",
					Value = "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}",
				},
				new 
				{
					Key = "SyncAll",
					Value = "false",
				},
			}
		},
	},
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Secrets.PutAsync(requestBody);


```