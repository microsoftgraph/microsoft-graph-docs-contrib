---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "8afc02cb-4d62-4dba-b536-9f6d73e9be26"
};

await graphClient.Applications["{application-id}"].Owners.References
	.Request()
	.AddAsync(directoryObject);

```