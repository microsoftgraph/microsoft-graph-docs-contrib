---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.attribute_set import AttributeSet
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AttributeSet(
	description = "Attributes for engineering team",
	max_attributes_per_set = 20,
)

result = await graph_client.directory.attribute_sets.by_attribute_set_id('attributeSet-id').patch(request_body)


```