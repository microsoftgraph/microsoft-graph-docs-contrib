---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthorizationPolicy()
request_body.allowed_to_use_s_s_p_r = True




result = await client.policies.authorization_policy.patch(request_body = request_body)


```