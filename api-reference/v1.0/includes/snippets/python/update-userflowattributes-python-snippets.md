---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_user_flow_attribute import IdentityUserFlowAttribute
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityUserFlowAttribute(
	description = "Your new hobby",
)

result = await graph_client.identity.user_flow_attributes.by_identity_user_flow_attribute_id('identityUserFlowAttribute-id').patch(request_body)


```