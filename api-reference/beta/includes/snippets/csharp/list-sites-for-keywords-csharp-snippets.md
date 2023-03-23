---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "siteCollection","webUrl" };
	requestConfiguration.QueryParameters.Filter = "siteCollection/root ne null";
});


```