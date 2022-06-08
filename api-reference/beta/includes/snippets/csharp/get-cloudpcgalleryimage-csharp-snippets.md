---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcGalleryImage = await graphClient.DeviceManagement.VirtualEndpoint.GalleryImages["{cloudPcGalleryImage-id}"]
	.Request()
	.GetAsync();

```