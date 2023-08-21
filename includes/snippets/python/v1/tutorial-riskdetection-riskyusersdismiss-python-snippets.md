---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DismissPostRequestBody()
request_body.UserIds(['4628e7df-dff3-407c-a08f-75f08c0806dc', ])




await client.identity_protection.risky_users.dismiss.post(request_body = request_body)


```