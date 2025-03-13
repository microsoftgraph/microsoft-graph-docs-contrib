---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new WorkforceIntegration
{
	DisplayName = "displayName-value",
	ApiVersion = 99,
	Encryption = new WorkforceIntegrationEncryption
	{
		Protocol = WorkforceIntegrationEncryptionProtocol.SharedSecret,
		Secret = "secret-value",
	},
	IsActive = true,
	Url = "url-value",
	Supports = WorkforceIntegrationSupportedEntities.None,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teamwork.WorkforceIntegrations["{workforceIntegration-id}"].PatchAsync(requestBody);


```