---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PermissionGrantPolicy
{
	Id = "my-custom-consent-policy",
	DisplayName = "Custom application consent policy",
	Description = "A custom permission grant policy to customize conditions for granting consent.",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.PermissionGrantPolicies.PostAsync(requestBody);


```