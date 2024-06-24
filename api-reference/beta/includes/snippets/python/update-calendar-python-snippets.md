---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.calendar import Calendar

graph_client = GraphServiceClient(credentials, scopes)

request_body = Calendar(
	name = "Social events",
)

result = await graph_client.me.calendar.patch(request_body)


```