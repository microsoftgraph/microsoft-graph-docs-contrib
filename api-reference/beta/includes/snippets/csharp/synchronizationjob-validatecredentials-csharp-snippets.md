---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.Synchronization.Jobs.Item.ValidateCredentials.ValidateCredentialsPostRequestBody
{
	Credentials = new List<SynchronizationSecretKeyStringValuePair>
	{
		new SynchronizationSecretKeyStringValuePair
		{
			Key = SynchronizationSecret.UserName,
			Value = "user@domain.com",
		},
		new SynchronizationSecretKeyStringValuePair
		{
			Key = SynchronizationSecret.Password,
			Value = "password-value",
		},
	},
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs["{synchronizationJob-id}"].ValidateCredentials.PostAsync(requestBody);


```