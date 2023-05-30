---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Sites.Item.Lists.Item.ContentTypes.AddCopyFromContentTypeHub.AddCopyFromContentTypeHubPostRequestBody
{
	ContentTypeId = "String",
};
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes.AddCopyFromContentTypeHub.PostAsync(requestBody);


```