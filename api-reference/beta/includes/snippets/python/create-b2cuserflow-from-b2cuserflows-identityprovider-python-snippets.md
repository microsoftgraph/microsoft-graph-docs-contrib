---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = B2cIdentityUserFlow()
request_body.id = 'Customer'

request_body.userflowtype(UserFlowType.SignUpOrSignIn('userflowtype.signuporsignin'))

request_body.UserFlowTypeVersion = 3

identity_providers_identity_provider1 = IdentityProvider()
identity_providers_identity_provider1.id = 'Facebook-OAuth'


identityProvidersArray []= identityProvidersIdentityProvider1;
request_body.identityproviders(identityProvidersArray)




request_configuration = B2cUserFlowsRequestBuilder.B2cUserFlowsRequestBuilderPostRequestConfiguration(
headers = {
	'Location' : "https://graph.microsoft.com/beta/identity/b2cUserFlows('B2C_1_Customer')",
}

)


result = await client.identity.b2c_user_flows.post(request_body = request_body, request_configuration = request_configuration)


```