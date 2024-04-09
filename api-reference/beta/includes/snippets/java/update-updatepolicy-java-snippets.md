---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.UpdatePolicy updatePolicy = new com.microsoft.graph.beta.models.windowsupdates.UpdatePolicy();
updatePolicy.setOdataType("#microsoft.graph.windowsUpdates.updatePolicy");
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
com.microsoft.graph.models.windowsupdates.UpdatePolicy result = graphClient.admin().windows().updates().updatePolicies().byUpdatePolicyId("{updatePolicy-id}").patch(updatePolicy);


```