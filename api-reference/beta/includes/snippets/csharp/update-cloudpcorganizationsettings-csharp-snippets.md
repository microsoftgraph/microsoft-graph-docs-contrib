---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CloudPcOrganizationSettings
{
	OdataType = "#microsoft.graph.cloudPcOrganizationSettings",
	EnableMEMAutoEnroll = true,
	OsVersion = CloudPcOperatingSystem.Windows11,
	UserAccountType = CloudPcUserAccountType.StandardUser,
	WindowsSettings = new CloudPcWindowsSettings
	{
		Language = "en-US",
	},
};
var result = await graphClient.DeviceManagement.VirtualEndpoint.OrganizationSettings.PatchAsync(requestBody);


```