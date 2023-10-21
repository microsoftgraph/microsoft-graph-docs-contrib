---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceEnrollmentWindowsHelloForBusinessConfiguration
{
	OdataType = "#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration",
	DisplayName = "Display Name value",
	Description = "Description value",
	Priority = 8,
	Version = 7,
	PinMinimumLength = 0,
	PinMaximumLength = 0,
	PinUppercaseCharactersUsage = WindowsHelloForBusinessPinUsage.Required,
	PinLowercaseCharactersUsage = WindowsHelloForBusinessPinUsage.Required,
	PinSpecialCharactersUsage = WindowsHelloForBusinessPinUsage.Required,
	State = Enablement.Enabled,
	SecurityDeviceRequired = true,
	UnlockWithBiometricsEnabled = true,
	RemotePassportEnabled = true,
	PinPreviousBlockCount = 5,
	PinExpirationInDays = 3,
	EnhancedBiometricsState = Enablement.Enabled,
};
var result = await graphClient.DeviceManagement.DeviceEnrollmentConfigurations["{deviceEnrollmentConfiguration-id}"].PatchAsync(requestBody);


```