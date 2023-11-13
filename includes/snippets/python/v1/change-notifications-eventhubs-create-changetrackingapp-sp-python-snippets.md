---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	app_id = "0bf30f3b-4a52-48df-9a82-234910c4a086",
)

result = await graph_client.service_principals.post(request_body)


```