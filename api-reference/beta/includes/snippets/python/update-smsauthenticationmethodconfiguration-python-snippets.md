---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.sms_authentication_method_configuration import SmsAuthenticationMethodConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = SmsAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.smsAuthenticationMethodConfiguration",
	id = "Sms",
	state = AuthenticationMethodState.Enabled,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```