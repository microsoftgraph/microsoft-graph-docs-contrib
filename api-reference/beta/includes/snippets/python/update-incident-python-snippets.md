---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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