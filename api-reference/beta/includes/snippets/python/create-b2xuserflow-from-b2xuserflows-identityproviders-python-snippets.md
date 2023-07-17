---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = B2xIdentityUserFlow()
request_body.id = 'Partner'

request_body.userflowtype(UserFlowType.SignUpOrSignIn('userflowtype.signuporsignin'))

request_body.UserFlowTypeVersion = 1

identity_providers_identity_provider1 = IdentityProvider()
identity_providers_identity_provider1.id = 'Facebook-OAuth'

identity_providers_identity_provider1.type = 'Facebook'

identity_providers_identity_provider1.name = 'Facebook'


identityProvidersArray []= identityProvidersIdentityProvider1;
request_body.identityproviders(identityProvidersArray)





result = await client.identity.b2x_user_flows.post(request_body = request_body)


```