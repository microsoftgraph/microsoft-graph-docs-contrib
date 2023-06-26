---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SynchronizationJob()
request_body.template_id = 'BoxOutDelta'




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.post(request_body = request_body)


```