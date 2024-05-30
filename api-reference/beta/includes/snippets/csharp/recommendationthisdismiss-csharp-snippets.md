---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DirectoryNamespace.Recommendations.Item.Dismiss;

var requestBody = new DismissPostRequestBody
{
	DismissReason = "Recommendations is not relevant for my organization because...",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.Recommendations["{recommendation-id}"].Dismiss.PostAsync(requestBody);


```