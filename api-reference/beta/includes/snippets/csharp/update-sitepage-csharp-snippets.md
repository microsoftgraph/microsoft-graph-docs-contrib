---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sitePage = new SitePage
{
	Title = "sample",
	ShowComments = true,
	ShowRecommendedPages = false
};

await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"]
	.Request()
	.UpdateAsync(sitePage);

```