---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.admin_report_settings import AdminReportSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdminReportSettings(
	display_concealed_names = True,
)

result = await graph_client.admin.report_settings.patch(request_body)


```