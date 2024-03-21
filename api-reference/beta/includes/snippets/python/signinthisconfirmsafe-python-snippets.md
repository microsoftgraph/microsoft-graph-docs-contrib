---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.confirm_safe_post_request_body import ConfirmSafePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConfirmSafePostRequestBody(
	request_ids = [
		"5a0c76d2-cb57-4ece-9bc1-c323178f116a",
		"96609214-09ef-4f80-9d4a-ace5fceecaec",
		"05020696-4eb8-45a3-918f-8f8bb7ad6015",
	],
)

await graph_client.audit_logs.sign_ins.confirm_safe.post(request_body)


```