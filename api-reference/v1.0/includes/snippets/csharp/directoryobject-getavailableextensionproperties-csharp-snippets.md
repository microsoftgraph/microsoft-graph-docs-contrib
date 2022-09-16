---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.DirectoryObjects
	.GetAvailableExtensionProperties(null)
	.Request()
	.PostAsync();

```