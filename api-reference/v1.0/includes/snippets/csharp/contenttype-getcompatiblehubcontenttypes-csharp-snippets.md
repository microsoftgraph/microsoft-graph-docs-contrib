---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getCompatibleHubContentTypes = await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes
	.GetCompatibleHubContentTypes()
	.Request()
	.GetAsync();

```