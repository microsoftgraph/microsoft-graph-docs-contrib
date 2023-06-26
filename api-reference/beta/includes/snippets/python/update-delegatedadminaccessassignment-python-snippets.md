---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DelegatedAdminAccessAssignment()
access_details = DelegatedAdminAccessDetails()
unified_roles_unified_role1 = UnifiedRole()
unified_roles_unified_role1.role_definition_id = '88d8e3e3-8f55-4a1e-953a-9b9898b8876b'


unifiedRolesArray []= unifiedRolesUnifiedRole1;
unified_roles_unified_role2 = UnifiedRole()
unified_roles_unified_role2.role_definition_id = '44367163-eba1-44c3-98af-f5787879f96a'


unifiedRolesArray []= unifiedRolesUnifiedRole2;
unified_roles_unified_role3 = UnifiedRole()
unified_roles_unified_role3.role_definition_id = '729827e3-9c14-49f7-bb1b-9608f156bbb8'


unifiedRolesArray []= unifiedRolesUnifiedRole3;
access_details.unifiedroles(unifiedRolesArray)



request_body.access_details = access_details


request_configuration = DelegatedAdminAccessAssignmentRequestBuilder.DelegatedAdminAccessAssignmentRequestBuilderPatchRequestConfiguration(
headers = {
	'If-Match' : "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"",
}

)


result = await client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').acce_assignments.by_acces_assignment_id('delegatedAdminAccessAssignment-id').patch(request_body = request_body, request_configuration = request_configuration)


```