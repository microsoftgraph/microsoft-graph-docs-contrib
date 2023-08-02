---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddCopyFromContentTypeHubPostRequestBody()
request_body.content_type_id = 'String'




result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').content_types.add_copy_from_content_type_hub.post(request_body = request_body)


```