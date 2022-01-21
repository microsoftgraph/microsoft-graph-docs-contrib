---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deviceCompliancePolicySettingStateSummaries = await graphClient.TenantRelationships.ManagedTenants.DeviceCompliancePolicySettingStateSummaries
	.Request()
	.GetAsync();

```