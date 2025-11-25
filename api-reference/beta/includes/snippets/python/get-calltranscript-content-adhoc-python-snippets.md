---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.adhoc_calls.item.transcripts.item.content.content_request_builder import ContentRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ContentRequestBuilder.ContentRequestBuilderGetQueryParameters(
		format = "text/vtt",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

await graph_client.users.by_user_id('user-id').adhoc_calls.by_adhoc_call_id('adhocCall-id').transcripts.by_call_transcript_id('callTranscript-id').content.get(request_configuration = request_configuration)


```