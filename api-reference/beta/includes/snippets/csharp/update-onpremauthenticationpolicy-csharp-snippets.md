---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OnPremAuthenticationPolicy
{
	DeletedDateTime = null,
	Description = "Updates to policy definition to manage and control authentication settings.",
	DisplayName = "Update policy name",
	Definition = new List<string>
	{
		"{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.OnPremAuthenticationPolicies["{onPremAuthenticationPolicy-id}"].PatchAsync(requestBody);


```