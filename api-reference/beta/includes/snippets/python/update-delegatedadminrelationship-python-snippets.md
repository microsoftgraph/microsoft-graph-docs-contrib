---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.tenant_relationships.delegated_admin_relationships.item.delegated_admin_relationship_item_request_builder import DelegatedAdminRelationshipItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.delegated_admin_relationship import DelegatedAdminRelationship
from msgraph_beta.generated.models.delegated_admin_relationship_customer_participant import DelegatedAdminRelationshipCustomerParticipant
from msgraph_beta.generated.models.delegated_admin_access_details import DelegatedAdminAccessDetails
from msgraph_beta.generated.models.unified_role import UnifiedRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DelegatedAdminRelationship(
	display_name = "Updated Contoso admin relationship",
	duration = "P31D",
	customer = DelegatedAdminRelationshipCustomerParticipant(
		tenant_id = "52eaad04-13a2-4a2f-9ce8-93a294fadf36",
	),
	access_details = DelegatedAdminAccessDetails(
		unified_roles = [
			UnifiedRole(
				role_definition_id = "44367163-eba1-44c3-98af-f5787879f96a",
			),
			UnifiedRole(
				role_definition_id = "29232cdf-9323-42fd-ade2-1d097af3e4de",
			),
			UnifiedRole(
				role_definition_id = "69091246-20e8-4a56-aa4d-066075b2a7a8",
			),
			UnifiedRole(
				role_definition_id = "3a2c62db-5318-420d-8d74-23affee5d9d5",
			),
		],
	),
	auto_extend_duration = "P180D",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"")


result = await graph_client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').patch(request_body, request_configuration = request_configuration)


```