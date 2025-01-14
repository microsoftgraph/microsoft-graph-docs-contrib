---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.health_monitoring.alert import Alert
from msgraph_beta.generated.models.alert_state import AlertState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Alert(
	state = AlertState.Resolved,
)

result = await graph_client.reports.health_monitoring.alerts.by_alert_id('alert-id').patch(request_body)


```