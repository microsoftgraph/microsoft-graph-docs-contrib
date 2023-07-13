---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Fido2AuthenticationMethodConfiguration()
request_body.@odata_type = '#microsoft.graph.fido2AuthenticationMethodConfiguration'

request_body.state(AuthenticationMethodState.Enabled('authenticationmethodstate.enabled'))

request_body.is_attestation_enforced = True




result = await client.policies.authentication_method_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body = request_body)


```