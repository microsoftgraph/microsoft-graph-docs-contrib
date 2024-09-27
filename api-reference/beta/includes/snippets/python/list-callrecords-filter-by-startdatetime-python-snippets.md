---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.call_records.call_records_request_builder import CallRecordsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CallRecordsRequestBuilder.CallRecordsRequestBuilderGetQueryParameters(
		filter = "startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.call_records.get(request_configuration = request_configuration)


```