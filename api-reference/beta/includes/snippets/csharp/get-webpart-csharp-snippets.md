---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webPart = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].WebParts["{webPart-id}"]
	.Request()
	.GetAsync();

```