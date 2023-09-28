---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/groups/{id}",
)

await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').members.ref.post(body = request_body)


```