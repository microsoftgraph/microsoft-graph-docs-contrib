---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members.References
	.Request()
	.GetAsync();

```