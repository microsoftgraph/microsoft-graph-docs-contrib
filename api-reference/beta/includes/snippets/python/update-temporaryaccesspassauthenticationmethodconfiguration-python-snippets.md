---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.temporary_access_pass_authentication_method_configuration import TemporaryAccessPassAuthenticationMethodConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = TemporaryAccessPassAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
	is_usable_once = True,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```