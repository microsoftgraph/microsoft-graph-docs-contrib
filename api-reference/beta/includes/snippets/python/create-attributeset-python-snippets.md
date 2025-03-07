---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.attribute_set import AttributeSet
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AttributeSet(
	id = "Engineering",
	description = "Attributes for engineering team",
	max_attributes_per_set = 25,
)

result = await graph_client.directory.attribute_sets.post(request_body)


```