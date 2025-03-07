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
		filter = "participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.call_records.get(request_configuration = request_configuration)


```