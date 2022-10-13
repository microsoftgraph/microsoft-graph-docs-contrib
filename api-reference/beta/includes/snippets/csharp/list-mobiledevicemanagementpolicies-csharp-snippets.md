---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mobileDeviceManagementPolicies = await graphClient.Policies.MobileDeviceManagementPolicies
	.Request()
	.GetAsync();

```