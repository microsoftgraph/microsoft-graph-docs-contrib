---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members["{directoryObject-id}"].Ref.DeleteAsync();


```