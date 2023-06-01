---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SitePage
{
	OdataType = "#microsoft.graph.sitePage",
	Title = "sample",
	ShowComments = true,
	ShowRecommendedPages = false,
};
var result = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].PatchAsync(requestBody);


```