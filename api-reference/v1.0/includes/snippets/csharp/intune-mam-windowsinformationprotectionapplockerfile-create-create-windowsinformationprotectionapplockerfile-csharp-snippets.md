---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsInformationProtectionAppLockerFile
{
	OdataType = "#microsoft.graph.windowsInformationProtectionAppLockerFile",
	DisplayName = "Display Name value",
	FileHash = "File Hash value",
	File = Convert.FromBase64String("ZmlsZQ=="),
	Version = "Version value",
};
var result = await graphClient.DeviceAppManagement.WindowsInformationProtectionPolicies["{windowsInformationProtectionPolicy-id}"].ExemptAppLockerFiles.PostAsync(requestBody);


```