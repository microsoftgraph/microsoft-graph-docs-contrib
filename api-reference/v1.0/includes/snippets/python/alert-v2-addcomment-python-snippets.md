---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.alert_comment import AlertComment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AlertComment(
	odata_type = "microsoft.graph.security.alertComment",
	comment = "Demo for docs",
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').comments.post(request_body)


```