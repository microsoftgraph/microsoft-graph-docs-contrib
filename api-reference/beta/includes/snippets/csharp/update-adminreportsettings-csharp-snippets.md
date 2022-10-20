---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var adminReportSettings = new AdminReportSettings
{
	DisplayConcealedNames = true
};

await graphClient.Admin.ReportSettings
	.Request()
	.UpdateAsync(adminReportSettings);

```