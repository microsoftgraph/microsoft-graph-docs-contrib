---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Print.Printers["{printer-id}"].GetCapabilities.GetAsync();


```