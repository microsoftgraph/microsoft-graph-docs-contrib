---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.virtual_event_presenter import VirtualEventPresenter
from msgraph.generated.models.communications_guest_identity import CommunicationsGuestIdentity

graph_client = GraphServiceClient(credentials, scopes)

request_body = VirtualEventPresenter(
	identity = CommunicationsGuestIdentity(
		odata_type = "#microsoft.graph.communicationsGuestIdentity",
		display_name = "Guest Speaker",
		email = "guest.speaker@fabrikam.com",
	),
)

result = await graph_client.solutions.virtual_events.townhalls.by_virtual_event_townhall_id('virtualEventTownhall-id').presenters.post(request_body)


```