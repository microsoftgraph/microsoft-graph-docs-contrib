---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DriveItem driveItem = new DriveItem();
ItemReference parentReference = new ItemReference();
parentReference.setId("new-parent-folder-id");
driveItem.setParentReference(parentReference);
driveItem.setName("new-item-name.txt");
DriveItem result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").patch(driveItem);


```