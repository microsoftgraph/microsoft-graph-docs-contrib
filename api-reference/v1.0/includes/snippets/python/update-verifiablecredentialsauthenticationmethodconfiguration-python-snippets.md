---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_method_configuration import AuthenticationMethodConfiguration
from msgraph.generated.models.authentication_method_state import AuthenticationMethodState
from msgraph.generated.models.exclude_target import ExcludeTarget
from msgraph.generated.models.authentication_method_target_type import AuthenticationMethodTargetType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationMethodConfiguration(
	state = AuthenticationMethodState.Disabled,
	exclude_targets = [
		ExcludeTarget(
			id = "10051f25-53a8-4f81-8a0b-9fc22887e640",
			target_type = AuthenticationMethodTargetType.Group,
		),
		ExcludeTarget(
			id = "e2c2244f-66cc-4d5b-9042-686f9fa42986",
			target_type = AuthenticationMethodTargetType.Group,
		),
	],
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```