---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.category_template import CategoryTemplate

graph_client = GraphServiceClient(credentials, scopes)

request_body = CategoryTemplate(
	odata_type = "#microsoft.graph.security.categoryTemplate",
	display_name = "Accounts Payable",
)

result = await graph_client.security.labels.categories.post(request_body)


```