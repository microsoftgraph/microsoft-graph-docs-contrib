---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedAppOperation
{
	OdataType = "#microsoft.graph.managedAppOperation",
	DisplayName = "Display Name value",
	State = "State value",
	Version = "Version value",
};
var result = await graphClient.DeviceAppManagement.ManagedAppRegistrations["{managedAppRegistration-id}"].Operations["{managedAppOperation-id}"].PatchAsync(requestBody);


```