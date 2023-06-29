---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyToSectionPostRequestBody()
request_body.id = 'id-value'

request_body.group_id = 'groupId-value'




result = await client.me.onenote.pages.by_page_id('onenotePage-id').copy_to_section.post(request_body = request_body)


```