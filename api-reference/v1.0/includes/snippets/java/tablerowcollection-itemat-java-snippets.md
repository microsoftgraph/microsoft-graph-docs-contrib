---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableRow workbookTableRow = graphClient.me().drive().items("{id}").workbook().tables("{id|name}").rows()
	.itemAt(WorkbookTableRowItemAtParameterSet
		.newBuilder()
		.withIndex(4)
		.build())
	.buildRequest()
	.get();

```