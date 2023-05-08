---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.DirectoryRoles["{directoryRole-id}"].Members["{directoryObject-id}"].Ref.DeleteAsync();


```