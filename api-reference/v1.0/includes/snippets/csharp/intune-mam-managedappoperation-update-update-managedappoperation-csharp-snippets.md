---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ManagedAppOperation
{
	OdataType = "#microsoft.graph.managedAppOperation",
	DisplayName = "Display Name value",
	State = "State value",
	Version = "Version value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.ManagedAppRegistrations["{managedAppRegistration-id}"].Operations["{managedAppOperation-id}"].PatchAsync(requestBody);


```