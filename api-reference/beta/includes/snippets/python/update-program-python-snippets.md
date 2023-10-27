---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Program(
	display_name = "testprogram3 new name",
)

result = await graph_client.programs.by_program_id('program-id').patch(request_body)


```