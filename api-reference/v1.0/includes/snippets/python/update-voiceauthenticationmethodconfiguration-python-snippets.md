---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.voice_authentication_method_configuration import VoiceAuthenticationMethodConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = VoiceAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.voiceAuthenticationMethodConfiguration",
	is_office_phone_allowed = False,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```