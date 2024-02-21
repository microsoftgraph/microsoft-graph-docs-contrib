---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganizationJoinRequestRecord multiTenantOrganizationJoinRequestRecord = new MultiTenantOrganizationJoinRequestRecord();
multiTenantOrganizationJoinRequestRecord.setAddedByTenantId("00000000-0000-0000-0000-000000000000");
MultiTenantOrganizationJoinRequestRecord result = graphClient.tenantRelationships().multiTenantOrganization().joinRequest().patch(multiTenantOrganizationJoinRequestRecord);


```