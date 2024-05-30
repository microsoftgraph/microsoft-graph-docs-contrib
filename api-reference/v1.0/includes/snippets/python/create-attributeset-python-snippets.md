---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.attribute_set import AttributeSet

graph_client = GraphServiceClient(credentials, scopes)

request_body = AttributeSet(
	id = "Engineering",
	description = "Attributes for engineering team",
	max_attributes_per_set = 25,
)

result = await graph_client.directory.attribute_sets.post(request_body)


```