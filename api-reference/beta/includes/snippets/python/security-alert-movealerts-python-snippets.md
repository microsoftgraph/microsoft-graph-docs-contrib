---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.alerts_v2.microsoft_graph_security_move_alerts.move_alerts_post_request_body import MoveAlertsPostRequestBody
from msgraph_beta.generated.models.correlation_reason import CorrelationReason
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MoveAlertsPostRequestBody(
	alert_ids = [
		"da637551227677560813_-961444813",
		"da637551227677560813_-961444814",
	],
	incident_id = "2972395",
	alert_comment = "Moving alerts for investigation consolidation",
	new_correlation_reasons = CorrelationReason.SameAsset | CorrelationReason.TemporalProximity,
)

result = await graph_client.security.alerts_v2.microsoft_graph_security_move_alerts.post(request_body)


```