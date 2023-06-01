---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.CrossCloudGovernmentOrganizationMapping.CrossCloudGovernmentOrganizationMappingPostRequestBody
{
};
await graphClient.DeviceManagement.VirtualEndpoint.CrossCloudGovernmentOrganizationMapping.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("X-MS-CloudPC-USGovCloudTenantAADToken", "{token}");
});


```