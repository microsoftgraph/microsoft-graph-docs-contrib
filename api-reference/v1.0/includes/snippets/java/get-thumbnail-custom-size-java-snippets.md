---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ThumbnailSetCollectionResponse result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").thumbnails().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"c300x400_crop"};
});


```