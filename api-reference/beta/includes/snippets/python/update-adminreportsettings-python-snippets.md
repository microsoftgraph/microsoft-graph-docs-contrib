---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdminReportSettings(
	display_concealed_names = True,
)

result = await graph_client.admin.report_settings.patch(request_body)


```