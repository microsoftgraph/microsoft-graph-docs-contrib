---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.DeletedItems.GraphGroup.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Orderby = new string []{ "deletedDateTime asc" };
	requestConfiguration.QueryParameters.Select = new string []{ "id","DisplayName","deletedDateTime" };
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```