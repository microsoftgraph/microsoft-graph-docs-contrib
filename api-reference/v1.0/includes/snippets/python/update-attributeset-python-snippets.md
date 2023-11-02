---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AttributeSet(
	description = "Attributes for engineering team",
	max_attributes_per_set = 20,
)

result = await graph_client.directory.attribute_sets.by_attribute_set_id('attributeSet-id').patch(body = request_body)


```