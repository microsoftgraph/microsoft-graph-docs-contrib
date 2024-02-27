---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.connector_group import ConnectorGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConnectorGroup(
	name = "Connector Group Demo",
)

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').connector_groups.post(request_body)


```