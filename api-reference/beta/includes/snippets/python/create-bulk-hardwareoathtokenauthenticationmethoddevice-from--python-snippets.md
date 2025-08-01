---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.hardware_oath_token_authentication_method_device import HardwareOathTokenAuthenticationMethodDevice
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = HardwareOathTokenAuthenticationMethodDevice(
	additional_data = {
			"@context" : "#$delta",
			"value" : [
				{
						"@content_id" : "1",
						"serial_number" : "TOTP123456",
						"manufacturer" : "Contoso",
						"model" : "Hardware Token 1000",
						"secret_key" : "6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB",
						"time_interval_in_seconds" : "30",
						"hash_function" : "hmacsha1",
				},
				{
						"@content_id" : "2",
						"serial_number" : "TOTP654321",
						"manufacturer" : "Contoso",
						"model" : "Hardware Token 1000",
						"secret_key" : "TXYZAE6PJ4UZF3NNKIW3HQNFUF7WFTFB",
						"time_interval_in_seconds" : "30",
						"hash_function" : "hmacsha1",
						"assign_to" : {
								"id" : "0cadbf92-####-####-####-############",
						},
				},
			],
	}
)

result = await graph_client.directory.authentication_method_devices.hardware_oath_devices.post(request_body)


```