---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.settings.windows.windows_request_builder import WindowsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = WindowsRequestBuilder.WindowsRequestBuilderGetQueryParameters(
		filter = "windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.settings.windows.get(request_configuration = request_configuration)


```