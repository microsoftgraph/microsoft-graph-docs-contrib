---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.admin_report_settings import AdminReportSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AdminReportSettings(
	display_concealed_names = True,
)

result = await graph_client.admin.report_settings.patch(request_body)


```