---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemRetentionLabel itemRetentionLabel = new ItemRetentionLabel();
RetentionLabelSettings retentionSettings = new RetentionLabelSettings();
retentionSettings.setIsRecordLocked(true);
itemRetentionLabel.setRetentionSettings(retentionSettings);
ItemRetentionLabel result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").retentionLabel().patch(itemRetentionLabel);


```