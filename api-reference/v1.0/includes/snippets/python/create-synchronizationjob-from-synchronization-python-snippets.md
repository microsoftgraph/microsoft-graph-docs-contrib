---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = SynchronizationJob(
	template_id = "BoxOutDelta",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.post(body = request_body)


```