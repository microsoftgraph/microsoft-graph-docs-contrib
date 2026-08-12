---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.teamwork.get_all_targeted_messages.get_all_targeted_messages_request_builder import GetAllTargetedMessagesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = GetAllTargetedMessagesRequestBuilder.GetAllTargetedMessagesRequestBuilderGetQueryParameters(
		filter = "from/application/id eq '6d23e712-527b-406f-8d59-d02927885918'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').teamwork.get_all_targeted_messages.get(request_configuration = request_configuration)


```