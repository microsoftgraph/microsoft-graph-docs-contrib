---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webPartPosition = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].WebParts["{webPart-id}"]
	.GetPositionOfWebPart()
	.Request()
	.GetAsync();

```