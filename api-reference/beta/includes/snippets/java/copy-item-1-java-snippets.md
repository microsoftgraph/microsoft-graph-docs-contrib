---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.drives.item.items.item.copy.CopyPostRequestBody copyPostRequestBody = new com.microsoft.graph.beta.drives.item.items.item.copy.CopyPostRequestBody();
ItemReference parentReference = new ItemReference();
parentReference.setDriveId("6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B");
parentReference.setId("DCD0D3AD-8989-4F23-A5A2-2C086050513F");
copyPostRequestBody.setParentReference(parentReference);
copyPostRequestBody.setName("contoso plan (copy).txt");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").copy().post(copyPostRequestBody);


```