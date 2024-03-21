---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.RetentionLabel retentionLabel = new com.microsoft.graph.beta.models.security.RetentionLabel();
retentionLabel.setOdataType("#microsoft.graph.security.retentionLabel");
retentionLabel.setDisplayName("String");
retentionLabel.setBehaviorDuringRetentionPeriod(com.microsoft.graph.beta.models.security.BehaviorDuringRetentionPeriod.DoNotRetain);
retentionLabel.setActionAfterRetentionPeriod(com.microsoft.graph.beta.models.security.ActionAfterRetentionPeriod.None);
retentionLabel.setRetentionTrigger(com.microsoft.graph.beta.models.security.RetentionTrigger.DateLabeled);
com.microsoft.graph.beta.models.security.RetentionDuration retentionDuration = new com.microsoft.graph.beta.models.security.RetentionDuration();
retentionDuration.setOdataType("microsoft.graph.security.retentionDuration");
retentionLabel.setRetentionDuration(retentionDuration);
retentionLabel.setIsInUse(boolean);
retentionLabel.setDescriptionForAdmins("String");
retentionLabel.setDescriptionForUsers("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
retentionLabel.setCreatedBy(createdBy);
retentionLabel.setLabelToBeApplied("String");
retentionLabel.setDefaultRecordBehavior(com.microsoft.graph.beta.models.security.DefaultRecordBehavior.StartLocked);
com.microsoft.graph.beta.models.security.FilePlanDescriptor descriptors = new com.microsoft.graph.beta.models.security.FilePlanDescriptor();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("authorityTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')");
additionalData.put("categoryTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')");
additionalData.put("citationTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')");
additionalData.put("departmentTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')");
additionalData.put("filePlanReferenceTemplate@odata.bind", "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')");
descriptors.setAdditionalData(additionalData);
retentionLabel.setDescriptors(descriptors);
com.microsoft.graph.models.security.RetentionLabel result = graphClient.security().labels().retentionLabels().post(retentionLabel);


```