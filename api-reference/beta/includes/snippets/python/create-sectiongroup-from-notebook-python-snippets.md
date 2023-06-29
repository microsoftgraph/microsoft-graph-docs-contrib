---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SectionGroup()
request_body.display_name = 'Section group name'




result = await client.me.onenote.notebooks.by_notebook_id('notebook-id').section_groups.post(request_body = request_body)


```