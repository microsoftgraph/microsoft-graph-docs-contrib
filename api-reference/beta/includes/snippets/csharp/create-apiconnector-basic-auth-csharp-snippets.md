---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new IdentityApiConnector
{
	DisplayName = "Test API",
	TargetUrl = "https://someapi.com/api",
	AuthenticationConfiguration = new BasicAuthentication
	{
		OdataType = "#microsoft.graph.basicAuthentication",
		Username = "<USERNAME>",
		Password = "<PASSWORD>",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ApiConnectors.PostAsync(requestBody);


```