---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateLinkPostRequestBody()
request_body.type = 'edit'

request_body.scope = 'organization'




result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_item_id('listItem-id').create_link.post(request_body = request_body)


```