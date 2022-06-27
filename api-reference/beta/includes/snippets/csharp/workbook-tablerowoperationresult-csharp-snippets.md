---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableRow = await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook
	.TableRowOperationResult("0195cfac-bd22-4f91-b276-dece0aa2378b")
	.Request()
	.GetAsync();

```