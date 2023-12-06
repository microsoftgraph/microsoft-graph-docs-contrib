---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new IdentityUserFlow
{
	Id = "Pol1",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 1f,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.UserFlows.PostAsync(requestBody);


```