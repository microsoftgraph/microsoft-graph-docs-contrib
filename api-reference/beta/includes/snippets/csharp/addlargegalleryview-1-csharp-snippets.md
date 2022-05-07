---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var clientContext = "785f4929-92ca-497b-863f-c778c77c9758";

await graphClient.Communications.Calls["{call-id}"]
	.AddLargeGalleryView(clientContext)
	.Request()
	.PostAsync();

```