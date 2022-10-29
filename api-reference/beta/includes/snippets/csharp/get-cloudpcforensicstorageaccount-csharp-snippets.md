---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getStorageAccounts = await graphClient.DeviceManagement.VirtualEndpoint.Snapshots
	.GetStorageAccounts("cb6ad4c4-8a17-4245-a644-e4436b1ee204")
	.Request()
	.GetAsync();

```