---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemRetentionLabel itemRetentionLabel = new ItemRetentionLabel();
RetentionLabelSettings retentionSettings = new RetentionLabelSettings();
retentionSettings.isRecordLocked = true;
itemRetentionLabel.retentionSettings = retentionSettings;

graphClient.drives("22e064df-3562-4a3c-98c3-74721ca06aa0").items("44d372fc-2eb6-4c85-8538-f3a0386a568f").retentionLabel()
	.buildRequest()
	.patch(itemRetentionLabel);

```