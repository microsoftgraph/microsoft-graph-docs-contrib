---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrintTaskDefinition()
request_body.display_name = 'Test TaskDefinitionName'

created_by = AppIdentity()
created_by.display_name = 'Requesting App Display Name'


request_body.created_by = created_by



result = await client.print.task_definitions.by_task_definition_id('printTaskDefinition-id').patch(request_body = request_body)


```