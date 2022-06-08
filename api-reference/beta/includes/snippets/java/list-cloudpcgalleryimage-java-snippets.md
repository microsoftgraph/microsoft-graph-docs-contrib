---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcGalleryImageCollectionPage galleryImages = graphClient.deviceManagement().virtualEndpoint().galleryImages()
	.buildRequest()
	.get();

```