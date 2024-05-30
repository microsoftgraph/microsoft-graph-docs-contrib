---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.managedtenants.TenantCustomizedInformation tenantCustomizedInformation = new com.microsoft.graph.beta.models.managedtenants.TenantCustomizedInformation();
tenantCustomizedInformation.setOdataType("#microsoft.graph.managedTenants.tenantCustomizedInformation");
tenantCustomizedInformation.setTenantId("String");
LinkedList<com.microsoft.graph.beta.models.managedtenants.TenantContactInformation> contacts = new LinkedList<com.microsoft.graph.beta.models.managedtenants.TenantContactInformation>();
com.microsoft.graph.beta.models.managedtenants.TenantContactInformation tenantContactInformation = new com.microsoft.graph.beta.models.managedtenants.TenantContactInformation();
tenantContactInformation.setOdataType("microsoft.graph.managedTenants.tenantContactInformation");
tenantContactInformation.setName("String");
tenantContactInformation.setTitle("String");
tenantContactInformation.setEmail("String");
tenantContactInformation.setPhone("String");
tenantContactInformation.setNotes("String");
contacts.add(tenantContactInformation);
tenantCustomizedInformation.setContacts(contacts);
tenantCustomizedInformation.setWebsite("String");
com.microsoft.graph.models.managedtenants.TenantCustomizedInformation result = graphClient.tenantRelationships().managedTenants().tenantsCustomizedInformation().byTenantCustomizedInformationId("{tenantCustomizedInformation-id}").patch(tenantCustomizedInformation);


```