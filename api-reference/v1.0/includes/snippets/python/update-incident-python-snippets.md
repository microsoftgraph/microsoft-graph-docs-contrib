---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.incident import Incident
from msgraph.generated.models.alert_classification import AlertClassification
from msgraph.generated.models.alert_determination import AlertDetermination
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Incident(
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.MultiStagedAttack,
	custom_tags = [
		"Demo",
	],
)

result = await graph_client.security.incidents.by_incident_id('incident-id').patch(request_body)


```