---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LinkedResource()
request_body.@odata_type = '#microsoft.graph.linkedResource'

request_body.web_url = 'http://microsoft.com'

request_body.application_name = 'Microsoft'

request_body.display_name = 'Microsoft'




result = await client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').linked_resources.by_linked_resource_id('linkedResource-id').patch(request_body = request_body)


```