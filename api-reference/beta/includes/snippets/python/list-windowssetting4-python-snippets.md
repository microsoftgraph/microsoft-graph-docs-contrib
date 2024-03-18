---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.settings.windows.windows_request_builder import WindowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = WindowsRequestBuilder.WindowsRequestBuilderGetQueryParameters(
		filter = "windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'",
)

request_configuration = WindowsRequestBuilder.WindowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.settings.windows.get(request_configuration = request_configuration)


```