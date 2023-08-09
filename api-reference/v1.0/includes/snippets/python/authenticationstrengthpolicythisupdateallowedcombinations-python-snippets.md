---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateAllowedCombinationsPostRequestBody()
request_body.AllowedCombinations([request_body.authenticationmethodmodes(AuthenticationMethodModes.Password, voice('authenticationmethodmodes.password, voice'))
])




result = await client.policies.authentication_strength_policies.by_authentication_strength_policie_id('authenticationStrengthPolicy-id').update_allowed_combinations.post(request_body = request_body)


```