---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganization multiTenantOrganization = graphClient.tenantRelationships().multiTenantOrganization()
	.buildRequest()
	.get();

```