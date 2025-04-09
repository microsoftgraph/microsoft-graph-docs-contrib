---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.virtual_event_presenter import VirtualEventPresenter
from msgraph.generated.models.communications_user_identity import CommunicationsUserIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VirtualEventPresenter(
	identity = CommunicationsUserIdentity(
		odata_type = "#microsoft.graph.communicationsUserIdentity",
		id = "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
	),
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').presenters.post(request_body)


```