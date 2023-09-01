---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationMember multiTenantOrganizationMember = new MultiTenantOrganizationMember();
multiTenantOrganizationMember.tenantId = "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad";
multiTenantOrganizationMember.displayName = "Fabrikam";

graphClient.tenantRelationships().multiTenantOrganization().tenants()
	.buildRequest()
	.post(multiTenantOrganizationMember);

```