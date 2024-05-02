---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.virtual_event_presenter import VirtualEventPresenter
from msgraph.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = VirtualEventPresenter(
	identity = Identity(
		id = "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
		additional_data = {
				"tenant_id" : "77229959-e479-4a73-b6e0-ddac27be315c",
		}
	),
	email = "kenneth.brown@contoso.com",
)

result = await graph_client.solutions.virtual_events.townhalls.by_virtual_event_townhall_id('virtualEventTownhall-id').presenters.post(request_body)


```