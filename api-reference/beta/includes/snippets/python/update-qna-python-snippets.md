---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.qna import Qna

graph_client = GraphServiceClient(credentials, scopes)

request_body = Qna(
	description = "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a weekend.",
)

result = await graph_client.search.qnas.by_qna_id('qna-id').patch(request_body)


```