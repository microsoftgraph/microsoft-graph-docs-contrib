---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TargetDeviceGroup
{
	OdataType = "#microsoft.graph.targetDeviceGroup",
	Id = "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696",
	DisplayName = "Device Group A",
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].RemoteDesktopSecurityConfiguration.TargetDeviceGroups.PostAsync(requestBody);


```