---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthorizationPolicy()
request_body.allow_email_verified_users_to_join_organization = False




result = await client.policies.authorization_policy.patch(request_body = request_body)


```