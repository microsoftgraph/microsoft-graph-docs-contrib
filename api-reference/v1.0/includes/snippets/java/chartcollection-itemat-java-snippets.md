---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookChart workbookChart = graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts()
	.itemAt(WorkbookChartItemAtParameterSet
		.newBuilder()
		.withIndex(8)
		.build())
	.buildRequest()
	.get();

```