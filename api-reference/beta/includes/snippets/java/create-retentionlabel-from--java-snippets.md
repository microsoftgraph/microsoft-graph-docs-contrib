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
FilePlanDescriptor descriptors = new FilePlanDescriptor();
descriptors.additionalDataManager().put("authorityTemplate@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')"));
descriptors.additionalDataManager().put("categoryTemplate@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')"));
descriptors.additionalDataManager().put("citationTemplate@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')"));
descriptors.additionalDataManager().put("departmentTemplate@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')"));
descriptors.additionalDataManager().put("filePlanReferenceTemplate@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')"));
retentionLabel.descriptors = descriptors;

graphClient.security().labels().retentionLabels()
	.buildRequest()
	.post(retentionLabel);

```