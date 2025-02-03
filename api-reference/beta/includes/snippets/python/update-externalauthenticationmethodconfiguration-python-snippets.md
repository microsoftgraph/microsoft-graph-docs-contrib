---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_authentication_method_configuration import ExternalAuthenticationMethodConfiguration
from msgraph_beta.generated.models.authentication_method_target import AuthenticationMethodTarget
from msgraph_beta.generated.models.authentication_method_target_type import AuthenticationMethodTargetType
from msgraph_beta.generated.models.authentication_method_state import AuthenticationMethodState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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