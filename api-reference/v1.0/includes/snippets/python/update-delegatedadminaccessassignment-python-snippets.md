---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.tenant_relationships.delegated_admin_relationships.item.access_assignments.item.delegated_admin_access_assignment_item_request_builder import DelegatedAdminAccessAssignmentItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.delegated_admin_access_assignment import DelegatedAdminAccessAssignment
from msgraph.generated.models.delegated_admin_access_details import DelegatedAdminAccessDetails
from msgraph.generated.models.unified_role import UnifiedRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DelegatedAdminAccessAssignment(
	access_details = DelegatedAdminAccessDetails(
		unified_roles = [
			UnifiedRole(
				role_definition_id = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b",
			),
			UnifiedRole(
				role_definition_id = "44367163-eba1-44c3-98af-f5787879f96a",
			),
			UnifiedRole(
				role_definition_id = "729827e3-9c14-49f7-bb1b-9608f156bbb8",
			),
		],
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"")


result = await graph_client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').access_assignments.by_delegated_admin_access_assignment_id('delegatedAdminAccessAssignment-id').patch(request_body, request_configuration = request_configuration)


```