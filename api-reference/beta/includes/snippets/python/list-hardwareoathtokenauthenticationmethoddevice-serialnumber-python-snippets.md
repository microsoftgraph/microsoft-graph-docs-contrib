---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory.authentication_method_devices.hardware_oath_devices.hardware_oath_devices_request_builder import HardwareOathDevicesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = HardwareOathDevicesRequestBuilder.HardwareOathDevicesRequestBuilderGetQueryParameters(
		filter = "serialNumber eq 'TOTP123456'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.authentication_method_devices.hardware_oath_devices.get(request_configuration = request_configuration)


```