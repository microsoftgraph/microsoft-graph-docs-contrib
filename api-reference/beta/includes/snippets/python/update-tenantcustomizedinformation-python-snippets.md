---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TenantCustomizedInformation()
request_body.@odata_type = '#microsoft.graph.managedTenants.tenantCustomizedInformation'

request_body.tenant_id = 'String'

contacts_tenant_contact_information1 = TenantContactInformation()
contacts_tenant_contact_information1.@odata_type = 'microsoft.graph.managedTenants.tenantContactInformation'

contacts_tenant_contact_information1.name = 'String'

contacts_tenant_contact_information1.title = 'String'

contacts_tenant_contact_information1.email = 'String'

contacts_tenant_contact_information1.phone = 'String'

contacts_tenant_contact_information1.notes = 'String'


contactsArray []= contactsTenantContactInformation1;
request_body.contacts(contactsArray)


request_body.website = 'String'




result = await client.tenant_relationships.managed_tenants.tenant_customized_information.by_tenant_customized_information_id('tenantCustomizedInformation-id').patch(request_body = request_body)


```