---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.virtual_events.webinars.item.registrations.registrations_request_builder import RegistrationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RegistrationsRequestBuilder.RegistrationsRequestBuilderGetQueryParameters(
		filter = "userId eq 'b7ef013a-c73c-4ec7-8ccb-e56290f45f68'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').registrations.get(request_configuration = request_configuration)


```