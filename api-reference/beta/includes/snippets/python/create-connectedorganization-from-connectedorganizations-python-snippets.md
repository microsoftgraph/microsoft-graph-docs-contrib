---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.connected_organization import ConnectedOrganization
from msgraph.generated.models.identity_source import IdentitySource
from msgraph.generated.models.domain_identity_source import DomainIdentitySource

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConnectedOrganization(
	display_name = "Connected organization name",
	description = "Connected organization description",
	identity_sources = [
		DomainIdentitySource(
			odata_type = "#microsoft.graph.domainIdentitySource",
			domain_name = "example.com",
			display_name = "example.com",
		),
	],
	state = ConnectedOrganizationState.Proposed,
)

result = await graph_client.identity_governance.entitlement_management.connected_organizations.post(request_body)


```