---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.mac_o_s_custom_configuration import MacOSCustomConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MacOSCustomConfiguration(
	odata_type = "#microsoft.graph.macOSCustomConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	payload_name = "Payload Name value",
	payload_file_name = "Payload File Name value",
	payload = base64.urlsafe_b64decode("cGF5bG9hZA=="),
)

result = await graph_client.device_management.device_configurations.post(request_body)


```