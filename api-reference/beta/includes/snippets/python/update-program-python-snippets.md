---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.program import Program

graph_client = GraphServiceClient(credentials, scopes)

request_body = Program(
	display_name = "testprogram3 new name",
)

result = await graph_client.programs.by_program_id('program-id').patch(request_body)


```