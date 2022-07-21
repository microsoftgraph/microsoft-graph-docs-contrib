---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableRow workbookTableRow = graphClient.me().drive().items("01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ").workbook()
	.tableRowOperationResult(WorkbookTableRowOperationResultParameterSet
		.newBuilder()
		.withKey("0195cfac-bd22-4f91-b276-dece0aa2378b")
		.build())
	.buildRequest()
	.get();

```