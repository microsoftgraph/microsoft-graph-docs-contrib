---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.online_meetings.item.online_meeting_item_request_builder import OnlineMeetingItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = OnlineMeetingItemRequestBuilder.OnlineMeetingItemRequestBuilderGetQueryParameters(
		filter = "MeetingOrganizer/User/Id eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').get(request_configuration = request_configuration)


```