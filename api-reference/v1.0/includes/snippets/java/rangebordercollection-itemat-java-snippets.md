---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeBorder workbookRangeBorder = graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().format().borders()
	.itemAt(WorkbookRangeBorderItemAtParameterSet
		.newBuilder()
		.withIndex(1)
		.build())
	.buildRequest()
	.get();

```