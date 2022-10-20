---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentTypeId = "0x0101";

await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes
	.AddCopyFromContentTypeHub(contentTypeId)
	.Request()
	.PostAsync();

```