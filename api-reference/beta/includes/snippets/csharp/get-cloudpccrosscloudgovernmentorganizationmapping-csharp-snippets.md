---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcCrossCloudGovernmentOrganizationMapping = await graphClient.DeviceManagement.VirtualEndpoint.CrossCloudGovernmentOrganizationMapping
	.Request()
	.Header("X-MS-CloudPC-USGovCloudTenantAADToken","{token}")
	.GetAsync();

```