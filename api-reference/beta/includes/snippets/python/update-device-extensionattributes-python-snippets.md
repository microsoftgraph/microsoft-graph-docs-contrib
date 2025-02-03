---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.device import Device
from msgraph_beta.generated.models.on_premises_extension_attributes import OnPremisesExtensionAttributes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Device(
	extension_attributes = OnPremisesExtensionAttributes(
		extension_attribute1 = "BYOD-Device",
	),
)

result = await graph_client.devices.by_device_id('device-id').patch(request_body)


```