---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Device
{
	AccountEnabled = false,
	AlternativeSecurityIds = new List<AlternativeSecurityId>
	{
		new AlternativeSecurityId
		{
			Type = 2,
			Key = Convert.FromBase64String("base64Y3YxN2E1MWFlYw=="),
		},
	},
	DeviceId = "4c299165-6e8f-4b45-a5ba-c5d250a707ff",
	DisplayName = "Test device",
	OperatingSystem = "linux",
	OperatingSystemVersion = "1",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Devices.PostAsync(requestBody);


```