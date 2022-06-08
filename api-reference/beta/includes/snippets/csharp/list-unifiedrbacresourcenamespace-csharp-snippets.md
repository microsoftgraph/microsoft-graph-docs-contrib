---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resourceNamespaces = await graphClient.RoleManagement.Directory.ResourceNamespaces
	.Request()
	.GetAsync();

```