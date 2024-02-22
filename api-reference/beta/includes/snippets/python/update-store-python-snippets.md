---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.store import Store

graph_client = GraphServiceClient(credentials, scopes)

request_body = Store(
	default_language_tag = "en-US",
)

result = await graph_client.term_store.patch(request_body)


```