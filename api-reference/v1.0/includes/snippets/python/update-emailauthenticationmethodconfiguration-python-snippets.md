---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthenticationMethodConfiguration()
request_body.@odata_type = '#microsoft.graph.emailAuthenticationMethodConfiguration'

additional_data = [
'allow_external_id_to_use_email_otp' => 'enabled', 
];
request_body.additional_data(additional_data)





result = await client.policies.authentication_method_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body = request_body)


```