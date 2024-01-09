---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Case(
	display_name = "My Case 1",
)

result = await graph_client.compliance.ediscovery.cases.post(request_body)


```