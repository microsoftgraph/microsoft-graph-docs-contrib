---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.onlineMeetings.getAllTranscripts.get_all_transcripts_request_builder import GetAllTranscriptsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetAllTranscriptsRequestBuilder.GetAllTranscriptsRequestBuilderGetQueryParameters(
		filter = "meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'",
)

request_configuration = GetAllTranscriptsRequestBuilder.GetAllTranscriptsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').online_meetings.get_all_transcripts.get(request_configuration = request_configuration)


```