---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.ContentApproval complianceChange = new com.microsoft.graph.beta.models.windowsupdates.ContentApproval();
complianceChange.setOdataType("#microsoft.graph.windowsUpdates.contentApproval");
com.microsoft.graph.beta.models.windowsupdates.CatalogContent content = new com.microsoft.graph.beta.models.windowsupdates.CatalogContent();
content.setOdataType("#microsoft.graph.windowsUpdates.catalogContent");
com.microsoft.graph.beta.models.windowsupdates.FeatureUpdateCatalogEntry catalogEntry = new com.microsoft.graph.beta.models.windowsupdates.FeatureUpdateCatalogEntry();
catalogEntry.setOdataType("#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry");
catalogEntry.setId("6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4");
content.setCatalogEntry(catalogEntry);
complianceChange.setContent(content);
com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings deploymentSettings = new com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings();
complianceChange.setDeploymentSettings(deploymentSettings);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 schedule = new ();
schedule.setStartDateTime("String (timestamp)");
 gradualRollout = new ();
gradualRollout.setOdataType("#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings");
gradualRollout.setEndDateTime("String (timestamp)");
schedule.setGradualRollout(gradualRollout);
additionalData.put("schedule", schedule);
complianceChange.setAdditionalData(additionalData);
com.microsoft.graph.models.windowsupdates.ComplianceChange result = graphClient.admin().windows().updates().updatePolicies().byUpdatePolicyId("{updatePolicy-id}").complianceChanges().post(complianceChange);


```