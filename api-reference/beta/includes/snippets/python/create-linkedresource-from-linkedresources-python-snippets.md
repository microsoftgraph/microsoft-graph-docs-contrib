---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LinkedResource()
request_body.web_url = 'https://microsoft.com'

request_body.application_name = 'Microsoft'

request_body.display_name = 'Microsoft'

request_body.external_id = 'dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9'




result = await client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').linked_resources.post(request_body = request_body)


```