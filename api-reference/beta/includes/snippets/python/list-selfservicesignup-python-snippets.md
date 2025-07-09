---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.audit_logs.sign_ups.sign_ups_request_builder import SignUpsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = SignUpsRequestBuilder.SignUpsRequestBuilderGetQueryParameters(
		filter = "createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.audit_logs.sign_ups.get(request_configuration = request_configuration)


```