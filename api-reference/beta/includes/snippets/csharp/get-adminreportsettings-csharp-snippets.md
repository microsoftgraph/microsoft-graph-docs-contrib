---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var adminReportSettings = await graphClient.Admin.ReportSettings
	.Request()
	.GetAsync();

```