---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EnvironmentObject
{
	Kind = EnvironmentKind.AzureSubscription,
	Id = "/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Zones["{zone-id}"].Environments.PostAsync(requestBody);


```