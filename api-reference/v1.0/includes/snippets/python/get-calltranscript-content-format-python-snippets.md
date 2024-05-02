---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.online_meetings.item.transcripts.item.content.content_request_builder import ContentRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ContentRequestBuilder.ContentRequestBuilderGetQueryParameters(
		format = "text/vtt",
)

request_configuration = ContentRequestBuilder.ContentRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

await graph_client.users.by_user_id('user-id').online_meetings.by_online_meeting_id('onlineMeeting-id').transcripts.by_call_transcript_id('callTranscript-id').content.get(request_configuration = request_configuration)


```