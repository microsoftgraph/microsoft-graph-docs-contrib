---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AuthenticationMethodConfiguration
{
	State = AuthenticationMethodState.Disabled,
	ExcludeTargets = new List<ExcludeTarget>
	{
		new ExcludeTarget
		{
			Id = "10051f25-53a8-4f81-8a0b-9fc22887e640",
			TargetType = AuthenticationMethodTargetType.Group,
		},
		new ExcludeTarget
		{
			Id = "e2c2244f-66cc-4d5b-9042-686f9fa42986",
			TargetType = AuthenticationMethodTargetType.Group,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```