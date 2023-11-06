---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new RemoteDesktopSecurityConfiguration
{
	OdataType = "#microsoft.graph.remoteDesktopSecurityConfiguration",
	IsRemoteDesktopProtocolEnabled = true,
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].RemoteDesktopSecurityConfiguration.PatchAsync(requestBody);


```