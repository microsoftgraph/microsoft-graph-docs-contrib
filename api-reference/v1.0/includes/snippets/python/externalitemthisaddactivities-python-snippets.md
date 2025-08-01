---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.external.connections.item.items.item.microsoft_graph_external_connectors_add_activities.add_activities_post_request_body import AddActivitiesPostRequestBody
from msgraph.generated.models.external_connectors.external_activity import ExternalActivity
from msgraph.generated.models.external_activity_type import ExternalActivityType
from msgraph.generated.models.external_connectors.identity import Identity
from msgraph.generated.models.identity_type import IdentityType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddActivitiesPostRequestBody(
	activities = [
		ExternalActivity(
			odata_type = "#microsoft.graph.externalConnectors.externalActivity",
			type = ExternalActivityType.Created,
			start_date_time = "2021-04-06T18:04:31.033Z",
			performed_by = Identity(
				type = IdentityType.User,
				id = "1f0c997e-99f7-43f1-8cca-086f8d42be8d",
			),
		),
	],
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').items.by_external_item_id('externalItem-id').microsoft_graph_external_connectors_add_activities.post(request_body)


```