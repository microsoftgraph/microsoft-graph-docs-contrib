---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	odata_type = "#microsoft.graph.user",
)

result = await graph_client.users.post(request_body)


```