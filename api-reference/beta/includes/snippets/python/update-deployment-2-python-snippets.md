---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Deployment()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.deployment'

settings = DeploymentSettings()
settings.@odata_type = 'microsoft.graph.windowsUpdates.deploymentSettings'

settingsmonitoring = MonitoringSettings()
monitoring_rules_monitoring_rule1 = MonitoringRule()
monitoring_rules_monitoring_rule1.signal(MonitoringSignal.Rollback('monitoringsignal.rollback'))

monitoring_rules_monitoring_rule1.Threshold = 5

monitoring_rules_monitoring_rule1.action(MonitoringAction.PauseDeployment('monitoringaction.pausedeployment'))


monitoringRulesArray []= monitoringRulesMonitoringRule1;
settingsmonitoring.monitoringrules(monitoringRulesArray)



settings.monitoring = settingsmonitoring

request_body.settings = settings



result = await client.admin.windows.updates.deployments.by_deployment_id('deployment-id').patch(request_body = request_body)


```