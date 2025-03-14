---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.report_root import ReportRoot
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReportRoot(
	odata_type = "#microsoft.graph.reportRoot",
)

result = await graph_client.reports.patch(request_body)


```