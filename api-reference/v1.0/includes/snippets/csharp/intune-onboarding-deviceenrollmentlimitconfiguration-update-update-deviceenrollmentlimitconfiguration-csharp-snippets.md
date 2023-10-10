---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceEnrollmentLimitConfiguration
{
	OdataType = "#microsoft.graph.deviceEnrollmentLimitConfiguration",
	DisplayName = "Display Name value",
	Description = "Description value",
	Priority = 8,
	Version = 7,
	Limit = 5,
};
var result = await graphClient.DeviceManagement.DeviceEnrollmentConfigurations["{deviceEnrollmentConfiguration-id}"].PatchAsync(requestBody);


```