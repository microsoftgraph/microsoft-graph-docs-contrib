---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationJoinRequestRecord multiTenantOrganizationJoinRequestRecord = new MultiTenantOrganizationJoinRequestRecord();
multiTenantOrganizationJoinRequestRecord.addedByTenantId = "00000000-0000-0000-0000-000000000000";

graphClient.tenantRelationships().multiTenantOrganization().joinRequest()
	.buildRequest()
	.patch(multiTenantOrganizationJoinRequestRecord);

```