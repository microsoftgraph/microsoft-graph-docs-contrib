---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.ExternalConnectors;

var requestBody = new Identity
{
	Id = "e811976d-83df-4cbd-8b9b-5215b18aa874",
	Type = IdentityType.User,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members.PostAsync(requestBody);


```