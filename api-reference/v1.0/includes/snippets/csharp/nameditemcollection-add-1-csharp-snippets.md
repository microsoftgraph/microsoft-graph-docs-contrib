---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var name = "test5";

var reference = JsonDocument.Parse(@"""=Sheet1!$F$15:$N$27""");

var comment = "Comment for the named item";

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Names
	.Add(name,reference,comment)
	.Request()
	.PostAsync();

```