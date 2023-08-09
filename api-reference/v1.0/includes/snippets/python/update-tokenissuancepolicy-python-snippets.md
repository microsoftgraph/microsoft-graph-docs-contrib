---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TokenIssuancePolicy()
request_body.Definition(['definition-value', ])

request_body.display_name = 'displayName-value'

request_body.is_organization_default = True




result = await client.policies.token_issuance_policies.by_token_issuance_policie_id('tokenIssuancePolicy-id').patch(request_body = request_body)


```