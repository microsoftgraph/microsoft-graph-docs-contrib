---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "Cloud PC-HR";

await graphClient.Me.CloudPCs["{id}"]
	.Rename(displayName)
	.Request()
	.PostAsync();
```