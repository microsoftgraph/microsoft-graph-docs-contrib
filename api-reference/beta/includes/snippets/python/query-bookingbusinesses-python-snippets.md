---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.booking_businesses.booking_businesses_request_builder import BookingBusinessesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = BookingBusinessesRequestBuilder.BookingBusinessesRequestBuilderGetQueryParameters(
		query = "Adventure",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.booking_businesses.get(request_configuration = request_configuration)


```