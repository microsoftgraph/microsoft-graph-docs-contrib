---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var lookupValue = JsonDocument.Parse(@"""pear""");

var tableArray = JsonDocument.Parse("{"Address":"Sheet1!B2:C7"}");

var colIndexNum = JsonDocument.Parse("2");

var rangeLookup = JsonDocument.Parse("false");

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Functions
	.Vlookup(lookupValue,tableArray,colIndexNum,rangeLookup)
	.Request()
	.Header("workbook-session-id","{session-id}")
	.PostAsync();

```