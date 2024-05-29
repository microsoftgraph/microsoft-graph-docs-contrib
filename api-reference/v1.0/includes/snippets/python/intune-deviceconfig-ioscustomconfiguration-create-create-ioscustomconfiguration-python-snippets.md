---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ios_custom_configuration import IosCustomConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosCustomConfiguration(
	odata_type = "#microsoft.graph.iosCustomConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	payload_name = "Payload Name value",
	payload_file_name = "Payload File Name value",
	payload = base64.urlsafe_b64decode("cGF5bG9hZA=="),
)

result = await graph_client.device_management.device_configurations.post(request_body)


```