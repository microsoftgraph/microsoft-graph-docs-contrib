---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.VerticalSection.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "emphasis","expand=webparts" };
});


```