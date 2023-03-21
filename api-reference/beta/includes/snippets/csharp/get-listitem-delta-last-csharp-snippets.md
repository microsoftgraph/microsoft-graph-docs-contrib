---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Token = "1230919asd190410jlka";
});


```