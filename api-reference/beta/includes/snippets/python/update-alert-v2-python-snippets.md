---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.alert import Alert

graph_client = GraphServiceClient(credentials, scopes)

request_body = Alert(
	assigned_to = "secAdmin@contoso.com",
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.Malware,
	status = AlertStatus.InProgress,
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').patch(request_body)


```