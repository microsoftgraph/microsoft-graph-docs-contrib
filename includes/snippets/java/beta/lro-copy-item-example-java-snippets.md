---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.copy.CopyPostRequestBody copyPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.copy.CopyPostRequestBody();
ItemReference parentReference = new ItemReference();
parentReference.setPath("/drive/root:/Documents");
copyPostRequestBody.setParentReference(parentReference);
copyPostRequestBody.setName("Copy of LargeFolder1");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").copy().post(copyPostRequestBody);


```