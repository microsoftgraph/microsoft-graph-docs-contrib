---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_user_flow_attribute import IdentityUserFlowAttribute

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityUserFlowAttribute(
	display_name = "Hobby",
	description = "Your hobby",
	data_type = IdentityUserFlowAttributeDataType.String,
)

result = await graph_client.identity.user_flow_attributes.post(request_body)


```