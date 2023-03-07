---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.DeviceManagement.VirtualEndpoint.CrossCloudGovernmentOrganizationMapping.GetAsync((requestConfiguration) =>
{
	requestConfiguration.Headers.Add("X-MS-CloudPC-USGovCloudTenantAADToken", "{token}");
});


```