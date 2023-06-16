---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthenticationCombinationConfiguration()
request_body.@odata_type = '#microsoft.graph.fido2CombinationConfiguration'

request_body.AppliesToCombinations([request_body.authenticationmethodmodes(AuthenticationMethodModes.Fido2('authenticationmethodmodes.fido2'))
])

additional_data = [
'allowed_a_a_g_u_i_ds' => ['486c3b50-889c-480a-abc5-c04ef7c873e0', 'c042882f-a621-40c8-94d3-9cde3a826fed', 'ec454c08-4c77-4012-9d48-45f7f0fccdfb', ],
];
request_body.additional_data(additional_data)





result = await client.identity.conditional_access.authentication_strength.policies.by_policie_id('authenticationStrengthPolicy-id').combination_configurations.post(request_body = request_body)


```