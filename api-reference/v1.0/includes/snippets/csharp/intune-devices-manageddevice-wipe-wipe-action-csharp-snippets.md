---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.ManagedDevices.Item.Wipe;

var requestBody = new WipePostRequestBody
{
	KeepEnrollmentData = true,
	KeepUserData = true,
	MacOsUnlockCode = "Mac Os Unlock Code value",
	PersistEsimDataPlan = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].Wipe.PostAsync(requestBody);


```