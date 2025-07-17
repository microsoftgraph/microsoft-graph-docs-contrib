---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.alert import Alert
from msgraph.generated.models.alert_classification import AlertClassification
from msgraph.generated.models.alert_determination import AlertDetermination
from msgraph.generated.models.alert_status import AlertStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Alert(
	assigned_to = "secAdmin@contoso.com",
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.Malware,
	status = AlertStatus.InProgress,
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').patch(request_body)


```