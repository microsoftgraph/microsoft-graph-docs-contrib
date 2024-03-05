---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.category_template import CategoryTemplate
from msgraph.generated.models.identity_set import IdentitySet

graph_client = GraphServiceClient(credentials, scopes)

request_body = CategoryTemplate(
	odata_type = "#microsoft.graph.security.categoryTemplate",
	display_name = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
)

result = await graph_client.security.labels.categories.post(request_body)


```