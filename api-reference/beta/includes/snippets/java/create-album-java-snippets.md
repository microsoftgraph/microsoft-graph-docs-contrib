---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DriveItem driveItem = new DriveItem();
driveItem.setName("My Day at the Beach");
Bundle bundle = new Bundle();
Album album = new Album();
bundle.setAlbum(album);
driveItem.setBundle(bundle);
LinkedList<DriveItem> children = new LinkedList<DriveItem>();
DriveItem driveItem1 = new DriveItem();
driveItem1.setId("1234asdf");
children.add(driveItem1);
driveItem.setChildren(children);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@microsoft.graph.conflictBehavior", "rename");
driveItem.setAdditionalData(additionalData);
DriveItem result = graphClient.drives().byDriveId("{drive-id}").bundles().post(driveItem);


```