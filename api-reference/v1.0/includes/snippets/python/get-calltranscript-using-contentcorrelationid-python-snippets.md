---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.online_meetings.item.transcripts.transcripts_request_builder import TranscriptsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = TranscriptsRequestBuilder.TranscriptsRequestBuilderGetQueryParameters(
		filter = "contentcorrelationId eq 'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').transcripts.get(request_configuration = request_configuration)


```