---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MultiTenantOrganizationIdentitySyncPolicyTemplate
{
	TemplateApplicationLevel = TemplateApplicationLevel.NewPartners | TemplateApplicationLevel.ExistingPartners,
	UserSyncInbound = new CrossTenantUserSyncInbound
	{
		IsSyncAllowed = true,
	},
};
var result = await graphClient.Policies.CrossTenantAccessPolicy.Templates.MultiTenantOrganizationIdentitySynchronization.PatchAsync(requestBody);


```