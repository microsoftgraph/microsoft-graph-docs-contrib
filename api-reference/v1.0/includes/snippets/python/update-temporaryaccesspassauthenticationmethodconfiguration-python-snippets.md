---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.temporary_access_pass_authentication_method_configuration import TemporaryAccessPassAuthenticationMethodConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TemporaryAccessPassAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
	is_usable_once = True,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```