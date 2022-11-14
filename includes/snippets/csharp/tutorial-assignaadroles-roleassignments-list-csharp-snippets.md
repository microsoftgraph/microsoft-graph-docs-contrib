---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.Filter("principalId eq '7146daa8-1b4b-4a66-b2f7-cf593d03c8d2'")
	.GetAsync();

```