---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationJoinRequestRecord multiTenantOrganizationJoinRequestRecord = new MultiTenantOrganizationJoinRequestRecord();
multiTenantOrganizationJoinRequestRecord.addedByTenantId = "1fd6544e-e994-4de2-9f1b-787b51c7d325";

graphClient.tenantRelationships().multiTenantOrganization().joinRequest()
	.buildRequest()
	.patch(multiTenantOrganizationJoinRequestRecord);

```