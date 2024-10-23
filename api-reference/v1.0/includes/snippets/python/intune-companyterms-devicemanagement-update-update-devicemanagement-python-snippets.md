---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_management import DeviceManagement
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceManagement(
	odata_type = "#microsoft.graph.deviceManagement",
)

result = await graph_client.device_management.patch(request_body)


```