---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	app_id = "65415bb1-9267-4313-bbf5-ae259732ee12",
)

result = await graph_client.service_principals.post(request_body)


```