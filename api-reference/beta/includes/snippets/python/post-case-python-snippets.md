---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.case import Case

graph_client = GraphServiceClient(credentials, scopes)

request_body = Case(
	display_name = "My Case 1",
)

result = await graph_client.compliance.ediscovery.cases.post(request_body)


```