---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReportRoot(
	odata_type = "#microsoft.graph.reportRoot",
)

result = await graph_client.reports.patch(request_body)


```