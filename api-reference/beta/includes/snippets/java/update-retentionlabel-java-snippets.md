---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionLabel retentionLabel = new RetentionLabel();
retentionLabel.displayName = "String";
retentionLabel.behaviorDuringRetentionPeriod = BehaviorDuringRetentionPeriod.DO_NOT_RETAIN;
retentionLabel.actionAfterRetentionPeriod = ActionAfterRetentionPeriod.NONE;
retentionLabel.retentionTrigger = RetentionTrigger.DATE_LABELED;
RetentionDuration retentionDuration = new RetentionDuration();
retentionLabel.retentionDuration = retentionDuration;
retentionLabel.isInUse = false;
retentionLabel.descriptionForAdmins = "String";
retentionLabel.descriptionForUsers = "String";
IdentitySet createdBy = new IdentitySet();
retentionLabel.createdBy = createdBy;
retentionLabel.labelToBeApplied = "String";
retentionLabel.defaultRecordBehavior = DefaultRecordBehavior.START_LOCKED;

graphClient.security().labels().retentionLabels("{retentionLabelId}")
	.buildRequest()
	.patch(retentionLabel);

```