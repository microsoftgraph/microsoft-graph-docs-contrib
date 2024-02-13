---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.on_premises_extension_attributes import OnPremisesExtensionAttributes

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	on_premises_extension_attributes = OnPremisesExtensionAttributes(
		extension_attribute1 = "skypeId.adeleVance",
		extension_attribute13 = None,
	),
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```