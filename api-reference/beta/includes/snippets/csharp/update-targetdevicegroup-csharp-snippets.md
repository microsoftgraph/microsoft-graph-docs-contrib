---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TargetDeviceGroup
{
	OdataType = "#microsoft.graph.targetDeviceGroup",
	DisplayName = "Device Group A",
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].RemoteDesktopSecurityConfiguration.TargetDeviceGroups["{targetDeviceGroup-id}"].PatchAsync(requestBody);


```