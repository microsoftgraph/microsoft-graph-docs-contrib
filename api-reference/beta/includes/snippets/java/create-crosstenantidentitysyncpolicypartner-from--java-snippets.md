---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantIdentitySyncPolicyPartner crossTenantIdentitySyncPolicyPartner = new CrossTenantIdentitySyncPolicyPartner();
crossTenantIdentitySyncPolicyPartner.setDisplayName("Fabrikam");
CrossTenantGroupSyncInbound groupSyncInbound = new CrossTenantGroupSyncInbound();
groupSyncInbound.setIsSyncAllowed(true);
crossTenantIdentitySyncPolicyPartner.setGroupSyncInbound(groupSyncInbound);
CrossTenantUserSyncInbound userSyncInbound = new CrossTenantUserSyncInbound();
userSyncInbound.setIsSyncAllowed(true);
crossTenantIdentitySyncPolicyPartner.setUserSyncInbound(userSyncInbound);
CrossTenantIdentitySyncPolicyPartner result = graphClient.policies().crossTenantAccessPolicy().partners().byCrossTenantAccessPolicyConfigurationPartnerTenantId("{crossTenantAccessPolicyConfigurationPartner-tenantId}").identitySynchronization().put(crossTenantIdentitySyncPolicyPartner);


```