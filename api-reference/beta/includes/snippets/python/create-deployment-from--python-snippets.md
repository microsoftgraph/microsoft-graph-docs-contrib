---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Deployment()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.deployment'

content = CatalogContent()
content.@odata_type = '#microsoft.graph.windowsUpdates.catalogContent'

contentcatalog_entry = FeatureUpdateCatalogEntry()
contentcatalog_entry.@odata_type = '#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry'

contentcatalog_entry.id = 'f341705b-0b15-4ce3-aaf2-6a1681d78606'


content.catalog_entry = contentcatalog_entry

request_body.content = content
settings = DeploymentSettings()
settings.@odata_type = 'microsoft.graph.windowsUpdates.deploymentSettings'

settingsschedule = ScheduleSettings()
settingsschedulegradual_rollout = RateDrivenRolloutSettings()
settingsschedulegradual_rollout.@odata_type = '#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings'

settingsschedulegradual_rollout.durationbetweenoffers =  \DateInterval('P7D')

additional_data = [
'device_per_offer' => 100,
];
settingsschedulegradual_rollout.additional_data(additional_data)



settingsschedule.gradual_rollout = settingsschedulegradual_rollout

settings.schedule = settingsschedule
settingsmonitoring = MonitoringSettings()
monitoring_rules_monitoring_rule1 = MonitoringRule()
monitoring_rules_monitoring_rule1.signal(MonitoringSignal.Rollback('monitoringsignal.rollback'))

monitoring_rules_monitoring_rule1.Threshold = 5

monitoring_rules_monitoring_rule1.action(MonitoringAction.PauseDeployment('monitoringaction.pausedeployment'))


monitoringRulesArray []= monitoringRulesMonitoringRule1;
settingsmonitoring.monitoringrules(monitoringRulesArray)



settings.monitoring = settingsmonitoring

request_body.settings = settings



result = await client.admin.windows.updates.deployments.post(request_body = request_body)


```