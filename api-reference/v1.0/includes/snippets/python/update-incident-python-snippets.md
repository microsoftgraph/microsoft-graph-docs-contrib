---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.security.incident import Incident
from msgraph.generated.models.alert_classification import AlertClassification
from msgraph.generated.models.alert_determination import AlertDetermination

graph_client = GraphServiceClient(credentials, scopes)

request_body = Incident(
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.MultiStagedAttack,
	custom_tags = [
		"Demo",
	],
)

result = await graph_client.security.incidents.by_incident_id('incident-id').patch(request_body)


```