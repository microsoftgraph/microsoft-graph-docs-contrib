---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganization multiTenantOrganization = new MultiTenantOrganization();
multiTenantOrganization.setDisplayName("Contoso organization");
multiTenantOrganization.setDescription("Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank");
MultiTenantOrganization result = graphClient.tenantRelationships().multiTenantOrganization().patch(multiTenantOrganization);


```