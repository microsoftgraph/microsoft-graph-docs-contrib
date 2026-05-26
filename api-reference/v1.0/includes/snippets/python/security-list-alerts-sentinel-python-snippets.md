---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.alerts_v2.alerts_v2_request_builder import Alerts_v2RequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = Alerts_v2RequestBuilder.Alerts_v2RequestBuilderGetQueryParameters(
		filter = "serviceSource eq 'microsoftSentinel'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.alerts_v2.get(request_configuration = request_configuration)


```