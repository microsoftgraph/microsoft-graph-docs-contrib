---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.names.addformulalocal.AddFormulaLocalPostRequestBody addFormulaLocalPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.names.addformulalocal.AddFormulaLocalPostRequestBody();
addFormulaLocalPostRequestBody.setName("test7");
addFormulaLocalPostRequestBody.setFormula("=SUM(Sheet2!$A$1+Sheet2!$A$2)");
addFormulaLocalPostRequestBody.setComment("Comment for the named item");
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().names().addFormulaLocal().post(addFormulaLocalPostRequestBody);


```