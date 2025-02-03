---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_meeting_registrant import ExternalMeetingRegistrant
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalMeetingRegistrant(
	odata_type = "#microsoft.graph.externalMeetingRegistrant",
	id = "9d96988d-a66a-46ce-aad7-0b245615b297",
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body)


```