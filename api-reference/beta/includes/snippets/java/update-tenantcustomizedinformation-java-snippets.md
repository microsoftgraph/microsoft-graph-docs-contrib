---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantCustomizedInformation tenantCustomizedInformation = new TenantCustomizedInformation();
tenantCustomizedInformation.tenantId = "String";
LinkedList<TenantContactInformation> contactsList = new LinkedList<TenantContactInformation>();
TenantContactInformation contacts = new TenantContactInformation();
contacts.name = "String";
contacts.title = "String";
contacts.email = "String";
contacts.phone = "String";
contacts.notes = "String";
contactsList.add(contacts);
tenantCustomizedInformation.contacts = contactsList;
tenantCustomizedInformation.website = "String";

graphClient.tenantRelationships().managedTenants().tenantsCustomizedInformation("{tenantCustomizedInformationId}")
	.buildRequest()
	.patch(tenantCustomizedInformation);

```