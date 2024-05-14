---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.online_meetings.item.online_meeting_item_request_builder import OnlineMeetingItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = OnlineMeetingItemRequestBuilder.OnlineMeetingItemRequestBuilderGetQueryParameters(
		filter = "meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'",
)

request_configuration = OnlineMeetingItemRequestBuilder.OnlineMeetingItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').get(request_configuration = request_configuration)


```