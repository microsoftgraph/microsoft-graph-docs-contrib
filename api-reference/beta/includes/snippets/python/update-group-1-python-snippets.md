---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.description = 'Contoso Life v2.0'

request_body.display_name = 'Contoso Life Renewed'




result = await client.groups.by_group_id('group-id').patch(request_body = request_body)


```