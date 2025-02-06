---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.hardware_oath_token_authentication_method_device import HardwareOathTokenAuthenticationMethodDevice
from msgraph_beta.generated.models.hardware_oath_token_hash_function import HardwareOathTokenHashFunction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = HardwareOathTokenAuthenticationMethodDevice(
	hash_function = HardwareOathTokenHashFunction.Hmacsha256,
)

result = await graph_client.directory.authentication_method_devices.hardware_oath_devices.by_hardware_oath_token_authentication_method_device_id('hardwareOathTokenAuthenticationMethodDevice-id').patch(request_body)


```