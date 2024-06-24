---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.windowsupdates.Deployment deployment = new com.microsoft.graph.beta.models.windowsupdates.Deployment();
deployment.setOdataType("#microsoft.graph.windowsUpdates.deployment");
com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings settings = new com.microsoft.graph.beta.models.windowsupdates.DeploymentSettings();
settings.setOdataType("microsoft.graph.windowsUpdates.deploymentSettings");
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
com.microsoft.graph.models.windowsupdates.Deployment result = graphClient.admin().windows().updates().deployments().byDeploymentId("{deployment-id}").patch(deployment);


```