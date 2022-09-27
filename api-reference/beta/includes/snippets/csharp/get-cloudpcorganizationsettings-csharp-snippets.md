---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcOrganizationSettings = await graphClient.DeviceManagement.VirtualEndpoint.OrganizationSettings
	.Request()
	.GetAsync();

```