---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.education.reports.reflect_check_in_responses.reflect_check_in_responses_request_builder import ReflectCheckInResponsesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ReflectCheckInResponsesRequestBuilder.ReflectCheckInResponsesRequestBuilderGetQueryParameters(
		filter = "submitDateTime gt 2023-10-10T00:00:00.000Z and submitDateTime lt 2023-10-11T00:00:00.000Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.education.reports.reflect_check_in_responses.get(request_configuration = request_configuration)


```