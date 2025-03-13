---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.ExternalConnectors;

var requestBody = new Identity
{
	Id = "1431b9c38ee647f6a",
	Type = IdentityType.ExternalGroup,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members.PostAsync(requestBody);


```