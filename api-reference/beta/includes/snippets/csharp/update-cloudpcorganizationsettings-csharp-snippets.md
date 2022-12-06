---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcOrganizationSettings = new CloudPcOrganizationSettings
{
	EnableMEMAutoEnroll = true,
	OsVersion = CloudPcOperatingSystem.Windows11,
	UserAccountType = CloudPcUserAccountType.StandardUser,
	WindowsSettings = new CloudPcWindowsSettings
	{
		Language = "en-US"
	}
};

await graphClient.DeviceManagement.VirtualEndpoint.OrganizationSettings
	.Request()
	.UpdateAsync(cloudPcOrganizationSettings);

```