---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName","extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker","extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable" };
});


```