---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AttributeSet(
	id = "Engineering",
	description = "Attributes for engineering team",
	max_attributes_per_set = 25,
)

result = await graph_client.directory.attribute_sets.post(request_body)


```