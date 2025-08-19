---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.online_meeting import OnlineMeeting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnlineMeeting(
	start_date_time = "2019-07-12T14:30:34.2444915-07:00",
	end_date_time = "2019-07-12T15:00:34.2464912-07:00",
	subject = "User meeting",
	meeting_template_id = "05b9ed5f-2ac3-4470-aae9-f4a0c30b1a4b",
)

result = await graph_client.me.online_meetings.post(request_body)


```