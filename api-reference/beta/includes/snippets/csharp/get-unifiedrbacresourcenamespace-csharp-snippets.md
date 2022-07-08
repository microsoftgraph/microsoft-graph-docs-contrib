---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRbacResourceNamespace = await graphClient.RoleManagement.Directory.ResourceNamespaces["{unifiedRbacResourceNamespace-id}"]
	.Request()
	.GetAsync();

```