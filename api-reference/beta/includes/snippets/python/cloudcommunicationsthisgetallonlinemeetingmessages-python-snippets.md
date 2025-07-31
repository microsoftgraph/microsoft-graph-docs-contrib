---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.get_all_online_meeting_messages.get_all_online_meeting_messages_request_builder import GetAllOnlineMeetingMessagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetAllOnlineMeetingMessagesRequestBuilder.GetAllOnlineMeetingMessagesRequestBuilderGetQueryParameters(
		expand = ["conversation"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.get_all_online_meeting_messages.get(request_configuration = request_configuration)


```