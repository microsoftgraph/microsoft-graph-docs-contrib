---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityUserFlowAttribute(
	description = "Your new hobby",
)

result = await graph_client.identity.user_flow_attributes.by_identity_user_flow_attribute_id('identityUserFlowAttribute-id').patch(request_body)


```