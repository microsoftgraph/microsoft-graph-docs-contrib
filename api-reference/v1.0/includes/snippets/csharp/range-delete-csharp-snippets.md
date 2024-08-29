---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.Workbook.Names.Item.RangeNamespace.Delete;

var requestBody = new DeletePostRequestBody
{
	Shift = "shift-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Names["{workbookNamedItem-id}"].Range.Delete.PostAsync(requestBody);


```