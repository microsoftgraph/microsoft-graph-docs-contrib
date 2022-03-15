---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var isSyncedFromOnPremises = true;

await graphClient.DirectoryObjects
	.GetAvailableExtensionProperties(isSyncedFromOnPremises)
	.Request()
	.PostAsync();

```