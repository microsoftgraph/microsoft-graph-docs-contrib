---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationIdentitySyncPolicyTemplate multiTenantOrganizationIdentitySyncPolicyTemplate = new MultiTenantOrganizationIdentitySyncPolicyTemplate();
multiTenantOrganizationIdentitySyncPolicyTemplate.templateApplicationLevel = EnumSet.of(TemplateApplicationLevel.NEW_PARTNERS,TemplateApplicationLevel.EXISTING_PARTNERS);
CrossTenantUserSyncInbound userSyncInbound = new CrossTenantUserSyncInbound();
userSyncInbound.isSyncAllowed = true;
multiTenantOrganizationIdentitySyncPolicyTemplate.userSyncInbound = userSyncInbound;

graphClient.policies().crossTenantAccessPolicy().templates().multiTenantOrganizationIdentitySynchronization()
	.buildRequest()
	.patch(multiTenantOrganizationIdentitySyncPolicyTemplate);

```