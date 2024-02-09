---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Domain(
	id = "contoso.com",
)

result = await graph_client.domains.post(request_body)


```