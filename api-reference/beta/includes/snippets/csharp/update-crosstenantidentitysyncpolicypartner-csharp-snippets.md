---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CrossTenantIdentitySyncPolicyPartner
{
	UserSyncInbound = new CrossTenantUserSyncInbound
	{
		IsSyncAllowed = true,
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.Partners["{crossTenantAccessPolicyConfigurationPartner-tenantId}"].IdentitySynchronization.PatchAsync(requestBody);


```