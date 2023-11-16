---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChartSeries workbookChartSeries = graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}").series()
	.itemAt(WorkbookChartSeriesItemAtParameterSet
		.newBuilder()
		.withIndex(2)
		.build())
	.buildRequest()
	.get();

```