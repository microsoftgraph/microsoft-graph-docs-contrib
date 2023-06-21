---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DelegatedAdminRelationship()
request_body.display_name = 'Updated Contoso admin relationship'

request_body.duration =  \DateInterval('P31D')

customer = DelegatedAdminRelationshipCustomerParticipant()
customer.tenant_id = '52eaad04-13a2-4a2f-9ce8-93a294fadf36'


request_body.customer = customer
access_details = DelegatedAdminAccessDetails()
unified_roles_unified_role1 = UnifiedRole()
unified_roles_unified_role1.role_definition_id = '44367163-eba1-44c3-98af-f5787879f96a'


unifiedRolesArray []= unifiedRolesUnifiedRole1;
unified_roles_unified_role2 = UnifiedRole()
unified_roles_unified_role2.role_definition_id = '29232cdf-9323-42fd-ade2-1d097af3e4de'


unifiedRolesArray []= unifiedRolesUnifiedRole2;
unified_roles_unified_role3 = UnifiedRole()
unified_roles_unified_role3.role_definition_id = '69091246-20e8-4a56-aa4d-066075b2a7a8'


unifiedRolesArray []= unifiedRolesUnifiedRole3;
unified_roles_unified_role4 = UnifiedRole()
unified_roles_unified_role4.role_definition_id = '3a2c62db-5318-420d-8d74-23affee5d9d5'


unifiedRolesArray []= unifiedRolesUnifiedRole4;
access_details.unifiedroles(unifiedRolesArray)



request_body.access_details = access_details


request_configuration = DelegatedAdminRelationshipRequestBuilder.DelegatedAdminRelationshipRequestBuilderPatchRequestConfiguration(
headers = {
	'If-Match' : "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"",
}

)


result = await client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').patch(request_body = request_body, request_configuration = request_configuration)


```