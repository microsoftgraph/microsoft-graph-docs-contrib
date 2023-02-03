---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var crossTenantIdentitySyncPolicyPartner = new CrossTenantIdentitySyncPolicyPartner
{
	UserSyncInbound = new CrossTenantUserSyncInbound
	{
		IsSyncAllowed = true
	}
};

await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-id}"].IdentitySynchronization
	.Request()
	.UpdateAsync(crossTenantIdentitySyncPolicyPartner);

```