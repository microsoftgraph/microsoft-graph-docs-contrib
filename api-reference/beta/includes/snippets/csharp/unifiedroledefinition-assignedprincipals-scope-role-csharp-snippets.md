---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignedPrincipals = await graphClient.RoleManagement.Directory.RoleDefinitions["{unifiedRoleDefinition-id}"]
	.AssignedPrincipals("administrativeUnit","d0c2e067-9ae9-4dbf-a280-51a51c46f432")
	.Request()
	.GetAsync();

```