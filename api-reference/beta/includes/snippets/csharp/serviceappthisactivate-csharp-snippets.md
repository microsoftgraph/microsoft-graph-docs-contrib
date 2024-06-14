---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.BackupRestore.ServiceApps.Item.Activate;

var requestBody = new ActivatePostRequestBody
{
	EffectiveDateTime = DateTimeOffset.Parse("2024-04-19T12-01-03.45Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ServiceApps["{serviceApp-id}"].Activate.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer <Access-Token>");
});


```