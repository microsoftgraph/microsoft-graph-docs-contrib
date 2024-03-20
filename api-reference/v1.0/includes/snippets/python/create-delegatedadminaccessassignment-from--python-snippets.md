---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.delegated_admin_access_assignment import DelegatedAdminAccessAssignment
from msgraph.generated.models.delegated_admin_access_container import DelegatedAdminAccessContainer
from msgraph.generated.models.delegated_admin_access_details import DelegatedAdminAccessDetails
from msgraph.generated.models.unified_role import UnifiedRole

graph_client = GraphServiceClient(credentials, scopes)

request_body = DelegatedAdminAccessAssignment(
	access_container = DelegatedAdminAccessContainer(
		access_container_id = "869713c9-0b28-4d08-8949-ae07ae1bf528",
		access_container_type = DelegatedAdminAccessContainerType.SecurityGroup,
	),
	access_details = DelegatedAdminAccessDetails(
		unified_roles = [
			UnifiedRole(
				role_definition_id = "29232cdf-9323-42fd-ade2-1d097af3e4de",
			),
			UnifiedRole(
				role_definition_id = "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
			),
			UnifiedRole(
				role_definition_id = "729827e3-9c14-49f7-bb1b-9608f156bbb8",
			),
			UnifiedRole(
				role_definition_id = "3a2c62db-5318-420d-8d74-23affee5d9d5",
			),
		],
	),
)

result = await graph_client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').access_assignments.post(request_body)


```