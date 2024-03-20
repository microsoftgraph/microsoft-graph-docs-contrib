---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.settings.windows.windows_request_builder import WindowsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = WindowsRequestBuilder.WindowsRequestBuilderGetQueryParameters(
		filter = "settingType eq 'roaming'",
)

request_configuration = WindowsRequestBuilder.WindowsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.settings.windows.get(request_configuration = request_configuration)


```