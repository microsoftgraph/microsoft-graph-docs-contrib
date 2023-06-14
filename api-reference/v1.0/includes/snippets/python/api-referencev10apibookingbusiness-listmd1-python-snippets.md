---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = BookingBusinessesRequestBuilder.BookingBusinessesRequestBuilderGetQueryParameters(
		query = "Adventure",
)

request_configuration = BookingBusinessesRequestBuilder.BookingBusinessesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.solutions.booking_businesses.get(request_configuration = request_configuration)


```