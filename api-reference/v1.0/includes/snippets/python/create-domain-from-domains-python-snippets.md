---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.domain import Domain

graph_client = GraphServiceClient(credentials, scopes)

request_body = Domain(
	id = "contoso.com",
)

result = await graph_client.domains.post(request_body)


```