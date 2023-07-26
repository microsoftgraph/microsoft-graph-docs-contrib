---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RetentionEventType()
request_body.@odata_type = '#microsoft.graph.security.retentionEventType'

request_body.display_name = 'String'

request_body.description = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by



result = await client.security.trigger_types.retention_event_types.post(request_body = request_body)


```