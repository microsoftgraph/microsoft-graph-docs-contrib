---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.device_app_management import DeviceAppManagement
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeviceAppManagement(
	odata_type = "#microsoft.graph.deviceAppManagement",
)

result = await graph_client.device_app_management.patch(request_body)


```