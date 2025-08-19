---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.online_meeting import OnlineMeeting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnlineMeeting(
	is_end_to_end_encryption_enabled = True,
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').patch(request_body)


```