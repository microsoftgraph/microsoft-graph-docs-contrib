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




result = await client.identity.b2c_user_flows.post(request_body = request_body)


```