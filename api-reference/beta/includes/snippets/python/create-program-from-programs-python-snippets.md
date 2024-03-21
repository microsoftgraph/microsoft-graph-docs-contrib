---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.program import Program

graph_client = GraphServiceClient(credentials, scopes)

request_body = Program(
	display_name = "testprogram3",
	description = "test description",
)

result = await graph_client.programs.post(request_body)


```