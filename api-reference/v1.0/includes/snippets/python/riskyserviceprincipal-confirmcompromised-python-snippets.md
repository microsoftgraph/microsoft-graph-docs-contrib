---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConfirmCompromisedPostRequestBody()
request_body.ServicePrincipalIds(['9089a539-a539-9089-39a5-899039a58990', ])




await client.identity_protection.risky_service_principals.confirm_compromised.post(request_body = request_body)


```