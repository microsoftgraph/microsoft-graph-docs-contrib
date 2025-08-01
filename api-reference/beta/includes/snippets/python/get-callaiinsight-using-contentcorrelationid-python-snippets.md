---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.online_meetings.item.ai_insights.ai_insights_request_builder import AiInsightsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AiInsightsRequestBuilder.AiInsightsRequestBuilderGetQueryParameters(
		filter = "contentcorrelationId eq 'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').ai_insights.get(request_configuration = request_configuration)


```