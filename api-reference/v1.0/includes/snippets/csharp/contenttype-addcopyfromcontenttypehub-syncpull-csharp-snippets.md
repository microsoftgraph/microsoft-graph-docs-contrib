---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Sites.Item.Lists.Item.ContentTypes.MicrosoftGraphAddCopyFromContentTypeHub.AddCopyFromContentTypeHubPostRequestBody
{
	ContentTypeId = "0x0101",
};
var result = await graphClient.Sites["site-id"].Lists["list-id"].ContentTypes.MicrosoftGraphAddCopyFromContentTypeHub.PostAsync(requestBody);


```