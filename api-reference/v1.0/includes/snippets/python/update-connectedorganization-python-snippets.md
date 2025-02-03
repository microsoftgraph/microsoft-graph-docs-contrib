---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.connected_organization import ConnectedOrganization
from msgraph.generated.models.connected_organization_state import ConnectedOrganizationState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConnectedOrganization(
	display_name = "Connected organization new name",
	description = "Connected organization new description",
	state = ConnectedOrganizationState.Configured,
)

result = await graph_client.identity_governance.entitlement_management.connected_organizations.by_connected_organization_id('connectedOrganization-id').patch(request_body)


```