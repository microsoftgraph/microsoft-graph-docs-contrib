---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.online_meetings.online_meetings_request_builder import OnlineMeetingsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetQueryParameters(
		filter = "JoinWebUrl eq 'https://teams.microsoft.com/l/meetup-join/19:meeting_MGQ4MDQyNTEtNTQ2NS00YjQxLTlkM2EtZWVkODYxODYzMmY2@thread.v2/0?context={\"Tid\":\"909c6581-5130-43e9-88f3-fcb3582cde37\",\"Oid\":\"dc17674c-81d9-4adb-bfb2-8f6a442e4622\"}'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.online_meetings.get(request_configuration = request_configuration)


```