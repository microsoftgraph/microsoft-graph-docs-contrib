---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_migration import CrossTenantMigration
from msgraph_beta.generated.models.m365_capability_inbound_access import M365CapabilityInboundAccess
from msgraph_beta.generated.models.m365_capability_resource_scopes import M365CapabilityResourceScopes
from msgraph_beta.generated.models.m365_capability_resource_scope import M365CapabilityResourceScope
from msgraph_beta.generated.models.m365_resource_type import M365ResourceType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantMigration(
	odata_type = "#microsoft.graph.crossTenantMigration",
	inbound_access = M365CapabilityInboundAccess(
		is_allowed = True,
		resource_scopes = M365CapabilityResourceScopes(
			included = [
				M365CapabilityResourceScope(
					resource_id = "ad4fc698-74dc-4f62-9e71-ba9b591e8e74",
					resource_type = M365ResourceType.Group,
				),
			],
			excluded = [
			],
		),
	),
)

result = await graph_client.policies.cross_tenant_access_policy.default.m365_capabilities.post(request_body)


```