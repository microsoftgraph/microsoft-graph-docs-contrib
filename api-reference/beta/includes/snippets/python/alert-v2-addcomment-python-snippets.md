---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AlertComment(
	odata_type = "microsoft.graph.security.alertComment",
	comment = "Demo for docs",
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').comments.post(request_body)


```