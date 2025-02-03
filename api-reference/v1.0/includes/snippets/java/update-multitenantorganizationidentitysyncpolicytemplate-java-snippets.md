---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganizationIdentitySyncPolicyTemplate multiTenantOrganizationIdentitySyncPolicyTemplate = new MultiTenantOrganizationIdentitySyncPolicyTemplate();
multiTenantOrganizationIdentitySyncPolicyTemplate.setTemplateApplicationLevel(EnumSet.of(TemplateApplicationLevel.NewPartners, TemplateApplicationLevel.ExistingPartners));
CrossTenantUserSyncInbound userSyncInbound = new CrossTenantUserSyncInbound();
userSyncInbound.setIsSyncAllowed(true);
multiTenantOrganizationIdentitySyncPolicyTemplate.setUserSyncInbound(userSyncInbound);
MultiTenantOrganizationIdentitySyncPolicyTemplate result = graphClient.policies().crossTenantAccessPolicy().templates().multiTenantOrganizationIdentitySynchronization().patch(multiTenantOrganizationIdentitySyncPolicyTemplate);


```