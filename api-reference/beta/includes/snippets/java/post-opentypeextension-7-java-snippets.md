---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DriveItem driveItem = new DriveItem();
driveItem.setName("New Item");
LinkedList<Extension> extensions = new LinkedList<Extension>();
Extension extension = new Extension();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("extensionName", "myCustomExtension");
additionalData.put("myCustomString", "Contoso data");
additionalData.put("myCustomBool", false);
extension.setAdditionalData(additionalData);
extensions.add(extension);
driveItem.setExtensions(extensions);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@microsoft.graph.conflictBehavior", "rename");
driveItem.setAdditionalData(additionalData1);
DriveItem result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").children().post(driveItem);


```