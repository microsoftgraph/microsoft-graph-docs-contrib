---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var adDomainPassword = "AdDomainPassword value";

await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections["{cloudPcOnPremisesConnection-id}"]
	.UpdateAdDomainPassword(adDomainPassword)
	.Request()
	.PostAsync();

```