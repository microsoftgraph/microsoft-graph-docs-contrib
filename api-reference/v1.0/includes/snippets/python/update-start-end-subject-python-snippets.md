---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.online_meeting import OnlineMeeting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnlineMeeting(
	start_date_time = "2020-09-09T14:33:30.8546353-07:00",
	end_date_time = "2020-09-09T15:03:30.8566356-07:00",
	subject = "Patch Meeting Subject",
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').patch(request_body)


```