---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.ServicePrincipals.Item.Synchronization.Secrets;
using Microsoft.Graph.Models;

var requestBody = new SecretsPutRequestBody
{
	Value = new List<SynchronizationSecretKeyStringValuePair>
	{
		new SynchronizationSecretKeyStringValuePair
		{
			Key = SynchronizationSecret.BaseAddress,
			Value = "user@domain.com",
		},
		new SynchronizationSecretKeyStringValuePair
		{
			Key = SynchronizationSecret.SecretToken,
			Value = "password-value",
		},
		new SynchronizationSecretKeyStringValuePair
		{
			Key = SynchronizationSecret.SyncNotificationSettings,
			Value = "{\"Enabled\":false,\"DeleteThresholdEnabled\":false}",
		},
		new SynchronizationSecretKeyStringValuePair
		{
			Key = SynchronizationSecret.SyncAll,
			Value = "false",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Secrets.PutAsSecretsPutResponseAsync(requestBody);


```