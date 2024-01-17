---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = PrintTaskDefinition(
	display_name = "Test TaskDefinitionName",
	created_by = AppIdentity(
		display_name = "Requesting App Display Name",
	),
)

result = await graph_client.print.task_definitions.post(request_body)


```