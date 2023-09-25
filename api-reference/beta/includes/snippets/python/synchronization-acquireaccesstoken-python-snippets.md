---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AcquireAccessTokenPostRequestBody(
	credentials = [
		SynchronizationSecretKeyStringValuePair(
			odata_type = "microsoft.graph.synchronizationSecretKeyStringValuePair",
		),
	]
)

await graph_client.applications.by_application_id('application-id').synchronization.acquire_acces_token.post(body = request_body)


```