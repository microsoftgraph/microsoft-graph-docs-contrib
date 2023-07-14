---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = VoiceAuthenticationMethodConfiguration()
request_body.@odata_type = '#microsoft.graph.voiceAuthenticationMethodConfiguration'

request_body.is_office_phone_allowed = False




result = await client.policies.authentication_method_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body = request_body)


```