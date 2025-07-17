---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.virtual_event_presenter import VirtualEventPresenter
from msgraph.generated.models.communications_guest_identity import CommunicationsGuestIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VirtualEventPresenter(
	identity = CommunicationsGuestIdentity(
		odata_type = "#microsoft.graph.communicationsGuestIdentity",
		display_name = "Guest Speaker",
		additional_data = {
				"email" : "guest.speaker@fabrikam.com",
		}
	),
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').presenters.post(request_body)


```