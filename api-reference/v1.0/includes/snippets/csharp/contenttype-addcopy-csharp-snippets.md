---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Sites.Item.Lists.Item.ContentTypes.AddCopy.AddCopyPostRequestBody
{
	ContentType = "https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101",
};
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes.AddCopy.PostAsync(requestBody);


```