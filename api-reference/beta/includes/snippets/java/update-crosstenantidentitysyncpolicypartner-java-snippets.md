---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantIdentitySyncPolicyPartner crossTenantIdentitySyncPolicyPartner = new CrossTenantIdentitySyncPolicyPartner();
CrossTenantUserSyncInbound userSyncInbound = new CrossTenantUserSyncInbound();
userSyncInbound.isSyncAllowed = true;
crossTenantIdentitySyncPolicyPartner.userSyncInbound = userSyncInbound;

graphClient.policies().crossTenantAccessPolicy().partners("90e29127-71ad-49c7-9ce8-db3f41ea06f1").identitySynchronization()
	.buildRequest()
	.patch(crossTenantIdentitySyncPolicyPartner);

```