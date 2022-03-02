---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcOrganizationSettings = new CloudPcOrganizationSettings
{
	UserAccountType = CloudPcUserAccountType.StandardUser,
	OsVersion = CloudPcOperatingSystem.Windows11
};

await graphClient.DeviceManagement.VirtualEndpoint.OrganizationSettings
	.Request()
	.UpdateAsync(cloudPcOrganizationSettings);

```