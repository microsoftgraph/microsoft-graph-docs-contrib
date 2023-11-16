---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceEnrollmentLimitConfiguration
{
	OdataType = "#microsoft.graph.deviceEnrollmentLimitConfiguration",
	DisplayName = "Display Name value",
	Description = "Description value",
	Priority = 8,
	Version = 7,
	Limit = 5,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceEnrollmentConfigurations.PostAsync(requestBody);


```