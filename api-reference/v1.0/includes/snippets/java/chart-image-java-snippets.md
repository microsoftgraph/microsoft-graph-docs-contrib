---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String string = graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").charts("{name}")
	.image(WorkbookChartImageParameterSet
		.newBuilder()
		.withWidth(640)
		.withHeight(480)
		.withFittingMode("fit")
		.build())
	.buildRequest()
	.get();

```