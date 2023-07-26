---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthorizationPolicy()
request_body.EnabledPreviewFeatures(['assignGroupsToRoles', ])




result = await client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body = request_body)


```