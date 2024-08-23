---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.functions.vlookup.VlookupPostRequestBody vlookupPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.functions.vlookup.VlookupPostRequestBody();
vlookupPostRequestBody.setLookupValue("pear");
UntypedNode tableArray = new UntypedNode();
tableArray.setAddress("Sheet1!B2:C7");
vlookupPostRequestBody.setTableArray(tableArray);
vlookupPostRequestBody.setColIndexNum(2d);
vlookupPostRequestBody.setRangeLookup(false);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().functions().vlookup().post(vlookupPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("workbook-session-id", "{session-id}");
});


```