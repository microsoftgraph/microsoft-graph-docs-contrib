---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyToSectionGroupPostRequestBody()
request_body.id = 'id-value'

request_body.group_id = 'groupId-value'

request_body.rename_as = 'renameAs-value'




result = await client.me.onenote.sections.by_section_id('onenoteSection-id').copy_to_section_group.post(request_body = request_body)


```