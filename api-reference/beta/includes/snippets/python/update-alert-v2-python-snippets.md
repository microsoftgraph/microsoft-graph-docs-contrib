---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.alert import Alert
from msgraph_beta.generated.models.alert_classification import AlertClassification
from msgraph_beta.generated.models.alert_determination import AlertDetermination
from msgraph_beta.generated.models.alert_status import AlertStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = Alert(
	assigned_to = "secAdmin@contoso.com",
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.Malware,
	status = AlertStatus.InProgress,
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').patch(request_body)


```