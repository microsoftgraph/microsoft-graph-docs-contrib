---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var destinationPrinterId = "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea";

await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"]
	.Redirect(destinationPrinterId,null)
	.Request()
	.PostAsync();

```