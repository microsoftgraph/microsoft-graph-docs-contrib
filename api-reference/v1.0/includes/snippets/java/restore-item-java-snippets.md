---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.restore.RestorePostRequestBody restorePostRequestBody = new com.microsoft.graph.drives.item.items.item.restore.RestorePostRequestBody();
ItemReference parentReference = new ItemReference();
parentReference.setId("String");
restorePostRequestBody.setParentReference(parentReference);
restorePostRequestBody.setName("String");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").restore().post(restorePostRequestBody);


```