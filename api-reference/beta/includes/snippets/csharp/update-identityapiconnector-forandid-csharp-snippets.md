---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new IdentityApiConnector
{
	DisplayName = "New Test API",
	TargetUrl = "https://otherapi.com/api/endpoint",
	AuthenticationConfiguration = new BasicAuthentication
	{
		OdataType = "microsoft.graph.basicAuthentication",
		Username = "<NEW_USERNAME>",
		Password = "<NEW_PASSWORD>",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"].PatchAsync(requestBody);


```