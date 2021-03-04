---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printUsageByPrinter = await graphClient.Print.Reports.DailyPrintUsageSummariesByPrinter["{id}"]
	.Request()
	.GetAsync();

```