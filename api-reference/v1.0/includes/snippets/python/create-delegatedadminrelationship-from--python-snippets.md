---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.delegated_admin_relationship import DelegatedAdminRelationship
from msgraph.generated.models.delegated_admin_relationship_customer_participant import DelegatedAdminRelationshipCustomerParticipant
from msgraph.generated.models.delegated_admin_access_details import DelegatedAdminAccessDetails
from msgraph.generated.models.unified_role import UnifiedRole

graph_client = GraphServiceClient(credentials, scopes)

request_body = DelegatedAdminRelationship(
	display_name = "Contoso admin relationship",
	duration = "P730D",
	customer = DelegatedAdminRelationshipCustomerParticipant(
		tenant_id = "4b827261-d21f-4aa9-b7db-7fa1f56fb163",
		display_name = "Contoso subsidiary Inc",
	),
	access_details = DelegatedAdminAccessDetails(
		unified_roles = [
			UnifiedRole(
				role_definition_id = "29232cdf-9323-42fd-ade2-1d097af3e4de",
			),
			UnifiedRole(
				role_definition_id = "3a2c62db-5318-420d-8d74-23affee5d9d5",
			),
		],
	),
	auto_extend_duration = "P180D",
)

result = await graph_client.tenant_relationships.delegated_admin_relationships.post(request_body)


```