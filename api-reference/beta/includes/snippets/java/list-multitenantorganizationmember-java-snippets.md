---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationMemberCollectionPage tenants = graphClient.tenantRelationships().multiTenantOrganization().tenants()
	.buildRequest()
	.get();

```