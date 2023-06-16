---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RetentionLabel()
request_body.@odata_type = '#microsoft.graph.security.retentionLabel'

retention_duration = RetentionDuration()
retention_duration.@odata_type = 'microsoft.graph.security.retentionDuration'


request_body.retention_duration = retention_duration
request_body.description_for_admins = 'String'

request_body.description_for_users = 'String'

request_body.label_to_be_applied = 'String'

request_body.defaultrecordbehavior(DefaultRecordBehavior.String('defaultrecordbehavior.string'))




result = await client.security.labels.retention_labels.by_retention_label_id('retentionLabel-id').patch(request_body = request_body)


```