---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.tiindicators.deletetiindicatorsbyexternalid.DeleteTiIndicatorsByExternalIdPostRequestBody deleteTiIndicatorsByExternalIdPostRequestBody = new com.microsoft.graph.beta.security.tiindicators.deletetiindicatorsbyexternalid.DeleteTiIndicatorsByExternalIdPostRequestBody();
LinkedList<String> value = new LinkedList<String>();
value.add("externalId-value1");
value.add("externalId-value2");
deleteTiIndicatorsByExternalIdPostRequestBody.setValue(value);
var result = graphClient.security().tiIndicators().deleteTiIndicatorsByExternalId().post(deleteTiIndicatorsByExternalIdPostRequestBody);


```