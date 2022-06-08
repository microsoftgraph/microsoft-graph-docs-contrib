---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcLaunchInfo = await graphClient.Me.CloudPCs["{cloudPC-id}"]
	.GetCloudPcLaunchInfo()
	.Request()
	.GetAsync();

```