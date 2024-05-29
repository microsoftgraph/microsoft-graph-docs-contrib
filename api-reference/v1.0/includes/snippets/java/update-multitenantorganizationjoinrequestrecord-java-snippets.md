---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganizationJoinRequestRecord multiTenantOrganizationJoinRequestRecord = new MultiTenantOrganizationJoinRequestRecord();
multiTenantOrganizationJoinRequestRecord.setAddedByTenantId("1fd6544e-e994-4de2-9f1b-787b51c7d325");
MultiTenantOrganizationJoinRequestRecord result = graphClient.tenantRelationships().multiTenantOrganization().joinRequest().patch(multiTenantOrganizationJoinRequestRecord);


```