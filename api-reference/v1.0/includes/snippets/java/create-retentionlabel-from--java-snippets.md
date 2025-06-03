---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.RetentionLabel retentionLabel = new com.microsoft.graph.beta.models.security.RetentionLabel();
retentionLabel.setOdataType("#microsoft.graph.security.retentionLabel");
retentionLabel.setDisplayName("Retention Schedule 10005");
retentionLabel.setBehaviorDuringRetentionPeriod(com.microsoft.graph.beta.models.security.BehaviorDuringRetentionPeriod.Retain);
retentionLabel.setActionAfterRetentionPeriod(com.microsoft.graph.beta.models.security.ActionAfterRetentionPeriod.StartDispositionReview);
retentionLabel.setRetentionTrigger(com.microsoft.graph.beta.models.security.RetentionTrigger.DateOfEvent);
com.microsoft.graph.beta.models.security.RetentionDurationInDays retentionDuration = new com.microsoft.graph.beta.models.security.RetentionDurationInDays();
retentionDuration.setOdataType("microsoft.graph.security.retentionDurationInDays");
retentionDuration.setDays(2555);
retentionLabel.setRetentionDuration(retentionDuration);
LinkedList<com.microsoft.graph.beta.models.security.DispositionReviewStage> dispositionReviewStages = new LinkedList<com.microsoft.graph.beta.models.security.DispositionReviewStage>();
com.microsoft.graph.beta.models.security.DispositionReviewStage dispositionReviewStage = new com.microsoft.graph.beta.models.security.DispositionReviewStage();
dispositionReviewStage.setStageNumber(1);
dispositionReviewStage.setName("Stage1");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> reviewersEmailAddresses = new LinkedList<String>();
reviewersEmailAddresses.add("Admin@contoso.onmicrosoft.com");
additionalData.put("reviewersEmailAddresses ", reviewersEmailAddresses);
dispositionReviewStage.setAdditionalData(additionalData);
dispositionReviewStages.add(dispositionReviewStage);
retentionLabel.setDispositionReviewStages(dispositionReviewStages);
retentionLabel.setDescriptionForAdmins("retain for 7 years");
retentionLabel.setDescriptionForUsers("retain for 7 years");
com.microsoft.graph.beta.models.security.FilePlanDescriptor descriptors = new com.microsoft.graph.beta.models.security.FilePlanDescriptor();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("authorityTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')");
additionalData1.put("categoryTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')");
additionalData1.put("citationTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')");
additionalData1.put("departmentTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')");
additionalData1.put("filePlanReferenceTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')");
descriptors.setAdditionalData(additionalData1);
retentionLabel.setDescriptors(descriptors);
retentionLabel.setDefaultRecordBehavior(com.microsoft.graph.beta.models.security.DefaultRecordBehavior.StartLocked);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("retentionEventType@odata.bind", "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')");
retentionLabel.setAdditionalData(additionalData2);
com.microsoft.graph.models.security.RetentionLabel result = graphClient.security().labels().retentionLabels().post(retentionLabel);


```