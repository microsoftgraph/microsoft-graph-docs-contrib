---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.virtual_events.webinars.item.registrations.registrations_request_builder import RegistrationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RegistrationsRequestBuilder.RegistrationsRequestBuilderGetQueryParameters(
		filter = "email eq 'EmileeMPham@contoso.com'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').registrations.get(request_configuration = request_configuration)


```