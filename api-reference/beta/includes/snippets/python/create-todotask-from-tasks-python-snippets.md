---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TodoTask()
request_body.title = 'A new task'

request_body.Categories(['Important', ])

linked_resources_linked_resource1 = LinkedResource()
linked_resources_linked_resource1.web_url = 'http://microsoft.com'

linked_resources_linked_resource1.application_name = 'Microsoft'

linked_resources_linked_resource1.display_name = 'Microsoft'


linkedResourcesArray []= linkedResourcesLinkedResource1;
request_body.linkedresources(linkedResourcesArray)





result = await client.me.todo.lists.by_list_id('todoTaskList-id').tasks.post(request_body = request_body)


```