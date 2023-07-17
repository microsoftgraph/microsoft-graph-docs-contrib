---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForceDeletePostRequestBody()
request_body.disable_user_accounts = True




await client.domains.by_domain_id('domain-id').force_delete.post(request_body = request_body)


```