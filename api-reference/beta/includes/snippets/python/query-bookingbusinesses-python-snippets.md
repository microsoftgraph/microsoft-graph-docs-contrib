---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.solutions.bookingBusinesses.booking_businesses_request_builder import BookingBusinessesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = BookingBusinessesRequestBuilder.BookingBusinessesRequestBuilderGetQueryParameters(
		query = "Adventure",
)

request_configuration = BookingBusinessesRequestBuilder.BookingBusinessesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.booking_businesses.get(request_configuration = request_configuration)


```