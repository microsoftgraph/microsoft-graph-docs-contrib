---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPC = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"]
	.Request()
	.Select("id,displayName,imageDisplayName,lastModifiedDateTime,lastRemoteActionResult,lastLoginResult,connectivityResult")
	.GetAsync();

```