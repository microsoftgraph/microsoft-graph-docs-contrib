---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.RetentionLabel retentionLabel = new com.microsoft.graph.beta.models.security.RetentionLabel();
retentionLabel.setOdataType("#microsoft.graph.security.retentionLabel");
com.microsoft.graph.beta.models.security.RetentionDurationInDays retentionDuration = new com.microsoft.graph.beta.models.security.RetentionDurationInDays();
retentionDuration.setOdataType("microsoft.graph.security.retentionDurationInDays");
retentionDuration.setDays(2555);
retentionLabel.setRetentionDuration(retentionDuration);
com.microsoft.graph.models.security.RetentionLabel result = graphClient.security().labels().retentionLabels().byRetentionLabelId("{retentionLabel-id}").patch(retentionLabel);


```