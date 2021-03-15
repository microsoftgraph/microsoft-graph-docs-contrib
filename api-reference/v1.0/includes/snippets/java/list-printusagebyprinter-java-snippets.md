---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPrintUsageByPrinterCollectionPage monthlyPrintUsageByPrinter = graphClient.reports().monthlyPrintUsageByPrinter()
	.buildRequest()
	.get();

```