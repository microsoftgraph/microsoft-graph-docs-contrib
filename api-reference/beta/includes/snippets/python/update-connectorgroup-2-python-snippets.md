---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ConnectorGroup(
	name = "name-value",
	region = ConnectorGroupRegion.Nam,
)

result = await graph_client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').connector_groups.by_connector_group_id('connectorGroup-id').patch(body = request_body)


```