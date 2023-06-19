---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthenticationStrengthPolicy()
request_body.@odata_type = '#microsoft.graph.authenticationStrengthPolicy'

request_body.display_name = 'Contoso authentication level'

request_body.description = 'The only authentication level allowed to access our secret apps'

request_body.AllowedCombinations([request_body.authenticationmethodmodes(AuthenticationMethodModes.Password, hardwareOath('authenticationmethodmodes.password, hardwareoath'))
request_body.authenticationmethodmodes(AuthenticationMethodModes.Password, sms('authenticationmethodmodes.password, sms'))
])




result = await client.policies.authentication_strength_policies.post(request_body = request_body)


```