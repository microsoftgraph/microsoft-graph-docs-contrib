---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Print.PrinterShares["{printerShare-id}"].AllowedUsers["{user-id}"].Ref.DeleteAsync();


```