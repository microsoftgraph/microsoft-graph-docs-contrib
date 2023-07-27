---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites.GetAllSites.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Skiptoken = "U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ";
});


```