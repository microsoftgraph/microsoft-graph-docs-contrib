---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableColumn workbookTableColumn = graphClient.me().drive().items("{id}").workbook().tables("{id|name}").columns()
	.itemAt(WorkbookTableColumnItemAtParameterSet
		.newBuilder()
		.withIndex(3)
		.build())
	.buildRequest()
	.get();

```