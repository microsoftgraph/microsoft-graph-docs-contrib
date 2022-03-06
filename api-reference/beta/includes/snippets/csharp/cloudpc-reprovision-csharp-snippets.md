---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userAccountType = CloudPcUserAccountType.Administrator;

var osVersion = CloudPcOperatingSystem.Windows10;

await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"]
	.Reprovision(userAccountType,osVersion)
	.Request()
	.PostAsync();

```