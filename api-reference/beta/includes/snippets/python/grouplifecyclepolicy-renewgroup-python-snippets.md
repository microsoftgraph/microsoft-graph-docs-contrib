---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = RenewGroupPostRequestBody(
	group_id = "ffffffff-ffff-ffff-ffff-ffffffffffff",
)

result = await graph_client.group_lifecycle_policies.renew_group.post(body = request_body)


```