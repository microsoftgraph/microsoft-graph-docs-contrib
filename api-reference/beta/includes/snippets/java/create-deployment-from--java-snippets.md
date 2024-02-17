---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.Deployment deployment = new com.microsoft.graph.beta.models.windowsupdates.Deployment();
deployment.setOdataType("#microsoft.graph.windowsUpdates.deployment");
com.microsoft.graph.beta.models.windowsupdates.CatalogContent content = new com.microsoft.graph.beta.models.windowsupdates.CatalogContent();
content.setOdataType("#microsoft.graph.windowsUpdates.catalogContent");
com.microsoft.graph.beta.models.windowsupdates.FeatureUpdateCatalogEntry catalogEntry = new com.microsoft.graph.beta.models.windowsupdates.FeatureUpdateCatalogEntry();
catalogEntry.setOdataType("#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry");
catalogEntry.setId("f341705b-0b15-4ce3-aaf2-6a1681d78606");
content.setCatalogEntry(catalogEntry);
deployment.setContent(content);
com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings settings = new com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings();
settings.setOdataType("microsoft.graph.windowsUpdates.deploymentSettings");
com.microsoft.graph.beta.models.windowsupdates.ScheduleSettings schedule = new com.microsoft.graph.beta.models.windowsupdates.ScheduleSettings();
com.microsoft.graph.beta.models.windowsupdates.RateDrivenRolloutSettings gradualRollout = new com.microsoft.graph.beta.models.windowsupdates.RateDrivenRolloutSettings();
gradualRollout.setOdataType("#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings");
PeriodAndDuration durationBetweenOffers = PeriodAndDuration.ofDuration(Duration.parse("P7D"));
gradualRollout.setDurationBetweenOffers(durationBetweenOffers);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("devicePerOffer", 100);
gradualRollout.setAdditionalData(additionalData);
schedule.setGradualRollout(gradualRollout);
settings.setSchedule(schedule);
com.microsoft.graph.beta.models.windowsupdates.MonitoringSettings monitoring = new com.microsoft.graph.beta.models.windowsupdates.MonitoringSettings();
LinkedList<com.microsoft.graph.beta.models.windowsupdates.MonitoringRule> monitoringRules = new LinkedList<com.microsoft.graph.beta.models.windowsupdates.MonitoringRule>();
com.microsoft.graph.beta.models.windowsupdates.MonitoringRule monitoringRule = new com.microsoft.graph.beta.models.windowsupdates.MonitoringRule();
monitoringRule.setSignal(com.microsoft.graph.beta.models.windowsupdates.MonitoringSignal.Rollback);
monitoringRule.setThreshold(5);
monitoringRule.setAction(com.microsoft.graph.beta.models.windowsupdates.MonitoringAction.PauseDeployment);
monitoringRules.add(monitoringRule);
monitoring.setMonitoringRules(monitoringRules);
settings.setMonitoring(monitoring);
deployment.setSettings(settings);
com.microsoft.graph.models.windowsupdates.Deployment result = graphClient.admin().windows().updates().deployments().post(deployment);


```