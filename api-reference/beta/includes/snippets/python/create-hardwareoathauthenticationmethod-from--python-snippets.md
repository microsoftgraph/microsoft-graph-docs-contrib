---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.hardware_oath_authentication_method import HardwareOathAuthenticationMethod
from msgraph_beta.generated.models.hardware_oath_token_authentication_method_device import HardwareOathTokenAuthenticationMethodDevice
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = HardwareOathAuthenticationMethod(
	device = HardwareOathTokenAuthenticationMethodDevice(
		id = "aad49556-####-####-####-############",
	),
)

result = await graph_client.me.authentication.hardware_oath_methods.post(request_body)


```