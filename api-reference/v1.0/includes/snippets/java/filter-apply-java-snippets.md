---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.tables.item.columns.item.filter.apply.ApplyPostRequestBody applyPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.tables.item.columns.item.filter.apply.ApplyPostRequestBody();
WorkbookFilterCriteria criteria = new WorkbookFilterCriteria();
criteria.setCriterion1("criterion1-value");
criteria.setCriterion2("criterion2-value");
criteria.setColor("color-value");
Operator operator = new Operator();
criteria.setOperator(operator);
WorkbookIcon icon = new WorkbookIcon();
icon.setSet("set-value");
icon.setIndex(99);
criteria.setIcon(icon);
criteria.setDynamicCriteria("dynamicCriteria-value");
Json values = new Json();
criteria.setValues(values);
criteria.setFilterOn("filterOn-value");
applyPostRequestBody.setCriteria(criteria);
graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().tables().byWorkbookTableId("{workbookTable-id}").columns().byWorkbookTableColumnId("{workbookTableColumn-id}").filter().apply().post(applyPostRequestBody);


```