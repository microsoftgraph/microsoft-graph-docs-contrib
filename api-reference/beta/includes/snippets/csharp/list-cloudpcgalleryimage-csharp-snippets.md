---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var galleryImages = await graphClient.DeviceManagement.VirtualEndpoint.GalleryImages
	.Request()
	.GetAsync();

```