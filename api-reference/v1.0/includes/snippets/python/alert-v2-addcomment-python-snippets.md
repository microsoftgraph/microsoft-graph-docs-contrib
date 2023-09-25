---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AlertComment(
	odata_type = "microsoft.graph.security.alertComment",
	comment = "Demo for docs",
)

result = await graph_client.security.alert_v2.by_alert_v2_id('alert-id').comments.post(body = request_body)


```