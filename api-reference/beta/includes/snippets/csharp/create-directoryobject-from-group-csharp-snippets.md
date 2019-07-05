---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
};

await graphClient.Users["{id}"].Manager.Reference
	.Request()
	.PutAsync(directoryObject);

```