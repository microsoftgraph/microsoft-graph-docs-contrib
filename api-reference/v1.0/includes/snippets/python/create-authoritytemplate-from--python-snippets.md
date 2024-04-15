---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.authority_template import AuthorityTemplate

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthorityTemplate(
	odata_type = "#microsoft.graph.security.authorityTemplate",
	display_name = "Business",
)

result = await graph_client.security.labels.authorities.post(request_body)


```