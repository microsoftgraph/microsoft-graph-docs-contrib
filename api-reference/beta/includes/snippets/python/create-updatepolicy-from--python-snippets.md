---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdatePolicy()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.updatePolicy'

audience = DeploymentAudience()
audience.id = '8c4eb1eb-d7a3-4633-8e2f-f926e82df08e'


request_body.audience = audience
compliance_changes_compliance_change1 = ContentApproval()
compliance_changes_compliance_change1.@odata_type = '#microsoft.graph.windowsUpdates.contentApproval'


complianceChangesArray []= complianceChangesComplianceChange1;
request_body.compliancechanges(complianceChangesArray)


compliance_change_rules_compliance_change_rule1 = ContentApprovalRule()
compliance_change_rules_compliance_change_rule1.@odata_type = '#microsoft.graph.windowsUpdates.contentApprovalRule'

compliance_change_rules_compliance_change_rule1content_filter = DriverUpdateFilter()
compliance_change_rules_compliance_change_rule1content_filter.@odata_type = '#microsoft.graph.windowsUpdates.driverUpdateFilter'


compliance_change_rules_compliance_change_rule1.content_filter = compliance_change_rules_compliance_change_rule1content_filter
compliance_change_rules_compliance_change_rule1.durationbeforedeploymentstart =  \DateInterval('P7D')


complianceChangeRulesArray []= complianceChangeRulesComplianceChangeRule1;
request_body.compliancechangerules(complianceChangeRulesArray)


deployment_settings = DeploymentSettings()
deployment_settings.@odata_type = 'microsoft.graph.windowsUpdates.deploymentSettings'

deployment_settingsschedule = ScheduleSettings()
deployment_settingsschedulegradual_rollout = RateDrivenRolloutSettings()
deployment_settingsschedulegradual_rollout.@odata_type = '#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings'

deployment_settingsschedulegradual_rollout.durationbetweenoffers =  \DateInterval('P1D')

additional_data = [
'device_per_offer' => 1000,
];
deployment_settingsschedulegradual_rollout.additional_data(additional_data)



deployment_settingsschedule.gradual_rollout = deployment_settingsschedulegradual_rollout

deployment_settings.schedule = deployment_settingsschedule

request_body.deployment_settings = deployment_settings



result = await client.admin.windows.updates.update_policies.post(request_body = request_body)


```