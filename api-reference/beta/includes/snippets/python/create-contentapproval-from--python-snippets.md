---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ContentApproval()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.contentApproval'

content = CatalogContent()
content.@odata_type = '#microsoft.graph.windowsUpdates.catalogContent'

contentcatalog_entry = FeatureUpdateCatalogEntry()
contentcatalog_entry.@odata_type = '#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry'

contentcatalog_entry.id = '6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4'


content.catalog_entry = contentcatalog_entry

request_body.content = content
deployment_settings = DeploymentSettings()

request_body.deployment_settings = deployment_settings
additional_data = [
'schedule' => request_body = Schedule()
		request_body.start_date_time = 'String (timestamp)'

gradual_rollout = GradualRollout()
		gradual_rollout.@odata_type = '#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings'

		gradual_rollout.end_date_time = 'String (timestamp)'


request_body.gradual_rollout = gradual_rollout

request_body.schedule = schedule

];
request_body.additional_data(additional_data)





result = await client.admin.windows.updates.update_policies.by_update_policie_id('updatePolicy-id').compliance_changes.post(request_body = request_body)


```