---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganization multiTenantOrganization = new MultiTenantOrganization();
multiTenantOrganization.displayName = "Contoso organization";
multiTenantOrganization.description = "Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank";

graphClient.tenantRelationships().multiTenantOrganization()
	.buildRequest()
	.put(multiTenantOrganization);

```