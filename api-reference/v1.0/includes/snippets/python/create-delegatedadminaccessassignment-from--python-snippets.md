---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DelegatedAdminAccessAssignment()
access_container = DelegatedAdminAccessContainer()
access_container.access_container_id = '869713c9-0b28-4d08-8949-ae07ae1bf528'

access_container.accesscontainertype(DelegatedAdminAccessContainerType.SecurityGroup('delegatedadminaccesscontainertype.securitygroup'))


request_body.access_container = access_container
access_details = DelegatedAdminAccessDetails()
unified_roles_unified_role1 = UnifiedRole()
unified_roles_unified_role1.role_definition_id = '29232cdf-9323-42fd-ade2-1d097af3e4de'


unifiedRolesArray []= unifiedRolesUnifiedRole1;
unified_roles_unified_role2 = UnifiedRole()
unified_roles_unified_role2.role_definition_id = 'f2ef992c-3afb-46b9-b7cf-a126ee74c451'


unifiedRolesArray []= unifiedRolesUnifiedRole2;
unified_roles_unified_role3 = UnifiedRole()
unified_roles_unified_role3.role_definition_id = '729827e3-9c14-49f7-bb1b-9608f156bbb8'


unifiedRolesArray []= unifiedRolesUnifiedRole3;
unified_roles_unified_role4 = UnifiedRole()
unified_roles_unified_role4.role_definition_id = '3a2c62db-5318-420d-8d74-23affee5d9d5'


unifiedRolesArray []= unifiedRolesUnifiedRole4;
access_details.unifiedroles(unifiedRolesArray)



request_body.access_details = access_details



result = await client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').acces_assignments.post(request_body = request_body)


```