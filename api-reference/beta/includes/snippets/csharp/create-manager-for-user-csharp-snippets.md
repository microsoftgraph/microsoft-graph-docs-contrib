---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"].Manager.Reference
	.Request()
	.PutAsync("6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0");

```