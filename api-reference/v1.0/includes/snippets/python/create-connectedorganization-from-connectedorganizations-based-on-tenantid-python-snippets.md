---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.connected_organization import ConnectedOrganization
from msgraph_beta.generated.models.identity_source import IdentitySource
from msgraph_beta.generated.models.azure_active_directory_tenant import AzureActiveDirectoryTenant
from msgraph_beta.generated.models.connected_organization_state import ConnectedOrganizationState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConnectedOrganization(
	display_name = "Connected organization name",
	description = "Connected organization description",
	identity_sources = [
		AzureActiveDirectoryTenant(
			odata_type = "#microsoft.graph.azureActiveDirectoryTenant",
			display_name = "Contoso",
			tenant_id = "aaaabbbb-0000-cccc-1111-dddd2222eeee",
		),
	],
	state = ConnectedOrganizationState.Proposed,
)

result = await graph_client.identity_governance.entitlement_management.connected_organizations.post(request_body)


```