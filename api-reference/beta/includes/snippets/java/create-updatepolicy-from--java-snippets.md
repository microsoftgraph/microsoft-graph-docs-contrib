---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.UpdatePolicy updatePolicy = new com.microsoft.graph.beta.models.windowsupdates.UpdatePolicy();
updatePolicy.setOdataType("#microsoft.graph.windowsUpdates.updatePolicy");
com.microsoft.graph.beta.models.windowsupdates.DeploymentAudience audience = new com.microsoft.graph.beta.models.windowsupdates.DeploymentAudience();
audience.setId("8c4eb1eb-d7a3-4633-8e2f-f926e82df08e");
updatePolicy.setAudience(audience);
LinkedList<com.microsoft.graph.beta.models.windowsupdates.ComplianceChange> complianceChanges = new LinkedList<com.microsoft.graph.beta.models.windowsupdates.ComplianceChange>();
com.microsoft.graph.beta.models.windowsupdates.ContentApproval complianceChange = new com.microsoft.graph.beta.models.windowsupdates.ContentApproval();
complianceChange.setOdataType("#microsoft.graph.windowsUpdates.contentApproval");
complianceChanges.add(complianceChange);
updatePolicy.setComplianceChanges(complianceChanges);
LinkedList<com.microsoft.graph.beta.models.windowsupdates.ComplianceChangeRule> complianceChangeRules = new LinkedList<com.microsoft.graph.beta.models.windowsupdates.ComplianceChangeRule>();
com.microsoft.graph.beta.models.windowsupdates.ContentApprovalRule complianceChangeRule = new com.microsoft.graph.beta.models.windowsupdates.ContentApprovalRule();
complianceChangeRule.setOdataType("#microsoft.graph.windowsUpdates.contentApprovalRule");
com.microsoft.graph.beta.models.windowsupdates.DriverUpdateFilter contentFilter = new com.microsoft.graph.beta.models.windowsupdates.DriverUpdateFilter();
contentFilter.setOdataType("#microsoft.graph.windowsUpdates.driverUpdateFilter");
complianceChangeRule.setContentFilter(contentFilter);
PeriodAndDuration durationBeforeDeploymentStart = PeriodAndDuration.ofDuration(Duration.parse("P7D"));
complianceChangeRule.setDurationBeforeDeploymentStart(durationBeforeDeploymentStart);
complianceChangeRules.add(complianceChangeRule);
updatePolicy.setComplianceChangeRules(complianceChangeRules);
com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings deploymentSettings = new com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings();
deploymentSettings.setOdataType("microsoft.graph.windowsUpdates.deploymentSettings");
com.microsoft.graph.beta.models.windowsupdates.ScheduleSettings schedule = new com.microsoft.graph.beta.models.windowsupdates.ScheduleSettings();
com.microsoft.graph.beta.models.windowsupdates.RateDrivenRolloutSettings gradualRollout = new com.microsoft.graph.beta.models.windowsupdates.RateDrivenRolloutSettings();
gradualRollout.setOdataType("#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings");
PeriodAndDuration durationBetweenOffers = PeriodAndDuration.ofDuration(Duration.parse("P1D"));
gradualRollout.setDurationBetweenOffers(durationBetweenOffers);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("devicePerOffer", 1000);
gradualRollout.setAdditionalData(additionalData);
schedule.setGradualRollout(gradualRollout);
deploymentSettings.setSchedule(schedule);
updatePolicy.setDeploymentSettings(deploymentSettings);
com.microsoft.graph.models.windowsupdates.UpdatePolicy result = graphClient.admin().windows().updates().updatePolicies().post(updatePolicy);


```