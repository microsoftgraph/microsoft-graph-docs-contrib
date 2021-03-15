---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.External.Connections["{externalConnection-id}"].Groups["{externalGroup-id}"].Members["{externalGroupMember-id}"]
	.Request()
	.DeleteAsync();

```