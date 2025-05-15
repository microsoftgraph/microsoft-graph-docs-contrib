---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.qr_code_pin_authentication_method_configuration import QrCodePinAuthenticationMethodConfiguration
from msgraph_beta.generated.models.authentication_method_state import AuthenticationMethodState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QrCodePinAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
	state = AuthenticationMethodState.Enabled,
	standard_q_r_code_lifetime_in_days = 365,
	pin_length = 8,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```