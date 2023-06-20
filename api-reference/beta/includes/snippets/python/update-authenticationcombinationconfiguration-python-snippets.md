---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthenticationCombinationConfiguration()
request_body.AppliesToCombinations([request_body.authenticationmethodmodes(AuthenticationMethodModes.Fido2('authenticationmethodmodes.fido2'))
])




result = await client.identity.conditional_access.authentication_strength.policies.by_policie_id('authenticationStrengthPolicy-id').combination_configurations.by_combination_configuration_id('authenticationCombinationConfiguration-id').patch(request_body = request_body)


```