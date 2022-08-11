---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.Filter(" principalId eq '5bde3e51-d13b-4db1-9948-fe4b109d11a7'")
	.GetAsync();

```