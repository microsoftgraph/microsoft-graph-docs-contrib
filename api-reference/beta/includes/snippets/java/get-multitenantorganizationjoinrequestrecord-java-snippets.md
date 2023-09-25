---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationJoinRequestRecord multiTenantOrganizationJoinRequestRecord = graphClient.tenantRelationships().multiTenantOrganization().joinRequest()
	.buildRequest()
	.get();

```