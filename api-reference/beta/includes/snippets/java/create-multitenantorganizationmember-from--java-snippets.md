---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganizationMember multiTenantOrganizationMember = new MultiTenantOrganizationMember();
multiTenantOrganizationMember.setTenantId("4a12efe6-aa14-4d03-8dff-88fc89e2e2ad");
multiTenantOrganizationMember.setDisplayName("Fabrikam");
MultiTenantOrganizationMember result = graphClient.tenantRelationships().multiTenantOrganization().tenants().post(multiTenantOrganizationMember);


```