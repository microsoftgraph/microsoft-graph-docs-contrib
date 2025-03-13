---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DirectoryObjects.Delta.GetAsDeltaGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "isof('microsoft.graph.user') or isof('microsoft.graph.group')";
	requestConfiguration.QueryParameters.Select = new string []{ "microsoft.graph.user/surname","microsoft.graph.group/displayName" };
	requestConfiguration.Headers.Add("Prefer", "return=minimal");
});


```