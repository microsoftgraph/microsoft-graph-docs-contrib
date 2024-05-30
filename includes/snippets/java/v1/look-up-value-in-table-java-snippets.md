---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.drives.item.items.item.workbook.functions.vlookup.VlookupPostRequestBody vlookupPostRequestBody = new com.microsoft.graph.drives.item.items.item.workbook.functions.vlookup.VlookupPostRequestBody();
vlookupPostRequestBody.setLookupValue("pear");
Json tableArray = new Json();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("Address", "Sheet1!B2:C7");
tableArray.setAdditionalData(additionalData);
vlookupPostRequestBody.setTableArray(tableArray);
vlookupPostRequestBody.setColIndexNum(2);
vlookupPostRequestBody.setRangeLookup(false);
var result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").workbook().functions().vlookup().post(vlookupPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("workbook-session-id", "{session-id}");
});


```