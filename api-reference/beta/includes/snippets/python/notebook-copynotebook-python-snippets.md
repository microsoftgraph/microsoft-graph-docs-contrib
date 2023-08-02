---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyNotebookPostRequestBody()
request_body.group_id = 'groupId-value'

request_body.rename_as = 'renameAs-value'




result = await client.me.onenote.notebooks.by_notebook_id('notebook-id').copy_notebook.post(request_body = request_body)


```