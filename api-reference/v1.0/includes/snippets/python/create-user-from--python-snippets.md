---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceCreate()
request_body.@odata_id = 'https://graph.microsoft.com/v1.0/users/{userId}'




await client.print.shares.by_share_id('printerShare-id').allowed_users.ref.post(request_body = request_body)


```