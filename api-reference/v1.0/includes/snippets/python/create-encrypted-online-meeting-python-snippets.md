---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.online_meeting import OnlineMeeting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnlineMeeting(
	start_date_time = "2025-02-01T14:30:34.2444915-07:00",
	end_date_time = "2025-02-01T15:00:34.2464912-07:00",
	subject = "Encrypted Meeting",
	is_end_to_end_encryption_enabled = True,
)

result = await graph_client.me.online_meetings.post(request_body)


```