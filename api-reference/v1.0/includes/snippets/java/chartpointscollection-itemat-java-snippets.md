---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartPoint workbookChartPoint = graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").series("{series-id}").points()
	.itemAt(WorkbookChartPointItemAtParameterSet
		.newBuilder()
		.withIndex(8)
		.build())
	.buildRequest()
	.get();

```