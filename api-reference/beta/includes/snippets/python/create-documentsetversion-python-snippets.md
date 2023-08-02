---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DocumentSetVersion()
request_body.comment = 'v1'

request_body.should_capture_minor_version = False




result = await client.sites.by_site_id('site-id').lists.by_list_id('list-id').items.by_item_id('listItem-id').document_set_versions.post(request_body = request_body)


```