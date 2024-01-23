---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ForceDeletePostRequestBody(
	disable_user_accounts = True,
)

await graph_client.domains.by_domain_id('domain-id').force_delete.post(request_body)


```