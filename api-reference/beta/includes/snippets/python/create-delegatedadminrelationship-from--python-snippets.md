---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DelegatedAdminRelationship()
request_body.display_name = 'Contoso admin relationship'

request_body.duration =  \DateInterval('P730D')

customer = DelegatedAdminRelationshipCustomerParticipant()
customer.tenant_id = '4b827261-d21f-4aa9-b7db-7fa1f56fb163'

customer.display_name = 'Contoso subsidiary Inc'


request_body.customer = customer
access_details = DelegatedAdminAccessDetails()
unified_roles_unified_role1 = UnifiedRole()
unified_roles_unified_role1.role_definition_id = '29232cdf-9323-42fd-ade2-1d097af3e4de'


unifiedRolesArray []= unifiedRolesUnifiedRole1;
unified_roles_unified_role2 = UnifiedRole()
unified_roles_unified_role2.role_definition_id = '3a2c62db-5318-420d-8d74-23affee5d9d5'


unifiedRolesArray []= unifiedRolesUnifiedRole2;
access_details.unifiedroles(unifiedRolesArray)



request_body.access_details = access_details



result = await client.tenant_relationships.delegated_admin_relationships.post(request_body = request_body)


```