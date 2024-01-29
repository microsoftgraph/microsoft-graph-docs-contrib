---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Case(
	display_name = "My Case 1",
)

result = await graph_client.compliance.ediscovery.cases.post(request_body)


```