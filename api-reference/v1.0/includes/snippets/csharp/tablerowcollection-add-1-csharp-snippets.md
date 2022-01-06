---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableRow = new WorkbookTableRow
{
	Values = JsonDocument.Parse(@"""[\r\n    [1, 2, 3],\r\n    [4, 5, 6]\r\n  ]""")
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows
	.Request()
	.Header("Prefer","respond-async")
	.Header("Workbook-Session-Id","{Workbook-Session-Id}")
	.AddAsync(workbookTableRow);

```