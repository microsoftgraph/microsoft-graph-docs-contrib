---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_authentication_method_configuration import ExternalAuthenticationMethodConfiguration
from msgraph.generated.models.authentication_method_target import AuthenticationMethodTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.externalAuthenticationMethodConfiguration",
	include_targets = [
		AuthenticationMethodTarget(
			target_type = AuthenticationMethodTargetType.Group,
			id = "b183b746-e7db-4fa2-bafc-69ecf18850dd",
			is_registration_required = False,
		),
	],
	state = AuthenticationMethodState.Enabled,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```