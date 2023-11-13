---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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

request_configuration = DelegatedAdminAccessAssignmentItemRequestBuilder.DelegatedAdminAccessAssignmentItemRequestBuilderPatchRequestConfiguration(
headers = {
		'If-Match' : "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"",
}

)

result = await graph_client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').access_assignments.by_delegated_admin_access_assignment_id('delegatedAdminAccessAssignment-id').patch(request_body, request_configuration = request_configuration)


```