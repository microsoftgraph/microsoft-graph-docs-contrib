---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/users/alexd@contoso.com",
)

await graph_client.groups.by_group_id('group-id').accepted_senders.ref.post(body = request_body)


```