---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.Profile.Anniversaries["{personAnnualEvent-id}"].DeleteAsync();


```