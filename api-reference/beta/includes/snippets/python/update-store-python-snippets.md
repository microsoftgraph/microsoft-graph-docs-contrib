---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.term_store.store import Store

graph_client = GraphServiceClient(credentials, scopes)

request_body = Store(
	default_language_tag = "en-US",
)

result = await graph_client.term_store.patch(request_body)


```