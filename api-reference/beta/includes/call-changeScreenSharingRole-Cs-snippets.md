---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var role = "viewer";

await graphClient.App.Calls["{id}"]
	.ChangeScreenSharingRole(role)
	.Request()
	.PostAsync();

```