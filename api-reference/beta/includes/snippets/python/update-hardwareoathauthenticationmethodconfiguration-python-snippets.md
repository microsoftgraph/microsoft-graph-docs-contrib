---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.hardware_oath_authentication_method_configuration import HardwareOathAuthenticationMethodConfiguration
from msgraph_beta.generated.models.authentication_method_state import AuthenticationMethodState

graph_client = GraphServiceClient(credentials, scopes)

request_body = HardwareOathAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
	state = AuthenticationMethodState.Disabled,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```