---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.on_premises_extension_attributes import OnPremisesExtensionAttributes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	on_premises_extension_attributes = OnPremisesExtensionAttributes(
		extension_attribute1 = "skypeId.adeleVance",
		extension_attribute13 = None,
	),
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```