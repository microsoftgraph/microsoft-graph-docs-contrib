---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalIdentitiesPolicy()
request_body.allow_external_identities_to_leave = False




result = await client.policies.external_identitie_policy.patch(request_body = request_body)


```