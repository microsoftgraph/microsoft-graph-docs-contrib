---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members["{directoryObject-id}"]
	.Request()
	.GetAsync();

```