---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintUsageByPrinterCollectionPage monthlyPrintUsageSummariesByPrinter = graphClient.print().reports().monthlyPrintUsageSummariesByPrinter()
	.buildRequest()
	.get();

```