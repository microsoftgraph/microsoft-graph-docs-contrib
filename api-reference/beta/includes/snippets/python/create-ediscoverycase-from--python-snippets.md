---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ediscovery_case import EdiscoveryCase

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryCase(
	display_name = "CONTOSO LITIGATION-005",
	description = "Project Bazooka",
	external_id = "324516",
)

result = await graph_client.security.cases.ediscovery_cases.post(request_body)


```