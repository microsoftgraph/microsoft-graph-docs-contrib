---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
request_body.@odata_type = '#microsoft.graph.user'

request_body.DeviceEnrollmentLimit = 5




result = await client.users.post(request_body = request_body)


```