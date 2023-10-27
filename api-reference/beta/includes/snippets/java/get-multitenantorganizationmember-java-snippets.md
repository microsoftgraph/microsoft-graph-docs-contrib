---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationMember multiTenantOrganizationMember = graphClient.tenantRelationships().multiTenantOrganization().tenants("1fd6544e-e994-4de2-9f1b-787b51c7d325")
	.buildRequest()
	.get();

```