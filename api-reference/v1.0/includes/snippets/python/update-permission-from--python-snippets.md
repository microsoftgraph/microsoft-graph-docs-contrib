---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Permission()
request_body.Roles(['read', ])




result = await client.sites.by_site_id('site-id').permissions.by_permission_id('permission-id').patch(request_body = request_body)


```