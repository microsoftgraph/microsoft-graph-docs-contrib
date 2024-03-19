---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.connector_group import ConnectorGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConnectorGroup(
	name = "name-value",
	region = ConnectorGroupRegion.Nam,
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').connector_groups.by_connector_group_id('connectorGroup-id').patch(request_body)


```