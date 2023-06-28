---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RetentionLabel()
request_body.@odata_type = '#microsoft.graph.security.retentionLabel'

request_body.display_name = 'String'

request_body.behaviorduringretentionperiod(BehaviorDuringRetentionPeriod.String('behaviorduringretentionperiod.string'))

request_body.actionafterretentionperiod(ActionAfterRetentionPeriod.String('actionafterretentionperiod.string'))

request_body.retentiontrigger(RetentionTrigger.String('retentiontrigger.string'))

retention_duration = RetentionDuration()
retention_duration.@odata_type = 'microsoft.graph.security.retentionDuration'


request_body.retention_duration = retention_duration
request_body.is_in_use = Boolean

request_body.description_for_admins = 'String'

request_body.description_for_users = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
request_body.label_to_be_applied = 'String'

request_body.defaultrecordbehavior(DefaultRecordBehavior.String('defaultrecordbehavior.string'))




result = await client.security.labels.retention_labels.post(request_body = request_body)


```