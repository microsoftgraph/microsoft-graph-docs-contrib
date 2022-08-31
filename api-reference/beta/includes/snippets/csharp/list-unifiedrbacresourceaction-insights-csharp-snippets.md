---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var resourceActions = await graphClient.RoleManagement.Directory.ResourceNamespaces["{unifiedRbacResourceNamespace-id}"].ResourceActions
	.Request()
	.GetAsync();

```