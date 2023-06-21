---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TokenLifetimePolicy()
request_body.Definition(['{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}', ])

request_body.display_name = 'Contoso token lifetime policy'

request_body.is_organization_default = True




result = await client.policies.token_lifetime_policies.by_token_lifetime_policie_id('tokenLifetimePolicy-id').patch(request_body = request_body)


```