---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganizationMember multiTenantOrganizationMember = new MultiTenantOrganizationMember();
multiTenantOrganizationMember.setRole(MultiTenantOrganizationMemberRole.Owner);
MultiTenantOrganizationMember result = graphClient.tenantRelationships().multiTenantOrganization().tenants().byMultiTenantOrganizationMemberId("{multiTenantOrganizationMember-id}").patch(multiTenantOrganizationMember);


```