---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DriveItem driveItem = new DriveItem();
driveItem.setName("Just some files");
Bundle bundle = new Bundle();
driveItem.setBundle(bundle);
LinkedList<DriveItem> children = new LinkedList<DriveItem>();
DriveItem driveItem1 = new DriveItem();
driveItem1.setId("1234asdf");
children.add(driveItem1);
DriveItem driveItem2 = new DriveItem();
driveItem2.setId("1234qwerty");
children.add(driveItem2);
driveItem.setChildren(children);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@microsoft.graph.conflictBehavior", "rename");
driveItem.setAdditionalData(additionalData);
DriveItem result = graphClient.drives().byDriveId("{drive-id}").bundles().post(driveItem);


```