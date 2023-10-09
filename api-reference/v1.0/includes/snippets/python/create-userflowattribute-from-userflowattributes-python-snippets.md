---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = IdentityUserFlowAttribute(
	display_name = "Hobby",
	description = "Your hobby",
	data_type = IdentityUserFlowAttributeDataType.String,
)

result = await graph_client.identity.user_flow_attributes.post(body = request_body)


```