---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionLabel retentionLabel = new RetentionLabel();
RetentionDuration retentionDuration = new RetentionDuration();
retentionLabel.retentionDuration = retentionDuration;
retentionLabel.descriptionForAdmins = "String";
retentionLabel.descriptionForUsers = "String";
retentionLabel.labelToBeApplied = "String";
retentionLabel.defaultRecordBehavior = DefaultRecordBehavior.START_LOCKED;

graphClient.security().labels().retentionLabels("{retentionLabelId}")
	.buildRequest()
	.patch(retentionLabel);

```