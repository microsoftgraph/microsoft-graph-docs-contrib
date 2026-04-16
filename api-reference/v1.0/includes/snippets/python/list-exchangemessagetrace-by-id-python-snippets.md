---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.admin.exchange.tracing.message_traces.message_traces_request_builder import MessageTracesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = MessageTracesRequestBuilder.MessageTracesRequestBuilderGetQueryParameters(
		filter = "id eq 'a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.exchange.tracing.message_traces.get(request_configuration = request_configuration)


```