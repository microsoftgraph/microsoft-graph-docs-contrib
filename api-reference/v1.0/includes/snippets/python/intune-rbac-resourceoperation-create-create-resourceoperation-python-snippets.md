---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ResourceOperation()
request_body.@odata_type = '#microsoft.graph.resourceOperation'

request_body.resource_name = 'Resource Name value'

request_body.action_name = 'Action Name value'

request_body.description = 'Description value'




result = await client.device_management.resource_operations.post(request_body = request_body)


```