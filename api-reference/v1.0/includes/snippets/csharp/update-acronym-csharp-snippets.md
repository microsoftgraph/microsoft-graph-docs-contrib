---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Search;

var requestBody = new Acronym
{
	Description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Search.Acronyms["{acronym-id}"].PatchAsync(requestBody);


```