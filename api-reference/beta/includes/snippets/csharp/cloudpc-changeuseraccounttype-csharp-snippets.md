---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userAccountType = CloudPcUserAccountType.Administrator;

await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"]
	.ChangeUserAccountType(userAccountType)
	.Request()
	.PostAsync();

```