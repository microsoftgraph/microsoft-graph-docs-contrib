---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.settings.windows.windows_request_builder import WindowsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = WindowsRequestBuilder.WindowsRequestBuilderGetQueryParameters(
		filter = "settingType eq 'backup'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.settings.windows.get(request_configuration = request_configuration)


```