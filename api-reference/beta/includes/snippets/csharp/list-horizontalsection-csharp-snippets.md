---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var horizontalSections = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.HorizontalSections
	.Request()
	.GetAsync();

```