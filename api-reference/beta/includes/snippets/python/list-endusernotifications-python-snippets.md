---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.attack_simulation.end_user_notifications.end_user_notifications_request_builder import EndUserNotificationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = EndUserNotificationsRequestBuilder.EndUserNotificationsRequestBuilderGetQueryParameters(
		filter = "source eq 'global'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.end_user_notifications.get(request_configuration = request_configuration)


```