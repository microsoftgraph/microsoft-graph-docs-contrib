---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.attribute_set import AttributeSet

graph_client = GraphServiceClient(credentials, scopes)

request_body = AttributeSet(
	description = "Attributes for engineering team",
	max_attributes_per_set = 20,
)

result = await graph_client.directory.attribute_sets.by_attribute_set_id('attributeSet-id').patch(request_body)


```