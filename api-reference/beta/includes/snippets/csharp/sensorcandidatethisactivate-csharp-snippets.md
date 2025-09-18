---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Identities.SensorCandidates.MicrosoftGraphSecurityActivate;

var requestBody = new ActivatePostRequestBody
{
	ServerIds = new List<string>
	{
		"c0633ebb-8cfb-f17a-0b9e-83aa661f53a3",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Identities.SensorCandidates.MicrosoftGraphSecurityActivate.PostAsync(requestBody);


```