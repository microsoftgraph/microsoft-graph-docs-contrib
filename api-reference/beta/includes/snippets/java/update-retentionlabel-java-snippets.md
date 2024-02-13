---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.RetentionLabel retentionLabel = new com.microsoft.graph.beta.models.security.RetentionLabel();
retentionLabel.setOdataType("#microsoft.graph.security.retentionLabel");
com.microsoft.graph.beta.models.security.RetentionDuration retentionDuration = new com.microsoft.graph.beta.models.security.RetentionDuration();
retentionDuration.setOdataType("microsoft.graph.security.retentionDuration");
retentionLabel.setRetentionDuration(retentionDuration);
retentionLabel.setDescriptionForAdmins("String");
retentionLabel.setDescriptionForUsers("String");
retentionLabel.setLabelToBeApplied("String");
retentionLabel.setDefaultRecordBehavior(com.microsoft.graph.beta.models.security.DefaultRecordBehavior.StartLocked);
com.microsoft.graph.models.security.RetentionLabel result = graphClient.security().labels().retentionLabels().byRetentionLabelId("{retentionLabel-id}").patch(retentionLabel);


```