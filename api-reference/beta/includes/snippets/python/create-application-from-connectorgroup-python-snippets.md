---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.reference_update import ReferenceUpdate

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceUpdate(
	odata_id = "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}",
)

await graph_client.applications.by_application_id('application-id').connector_group.ref.put(request_body)


```