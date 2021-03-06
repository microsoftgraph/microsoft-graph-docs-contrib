---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.PrinterShares["{id}"].AllowedUsers["{id}"].Reference
	.Request()
	.DeleteAsync();

```