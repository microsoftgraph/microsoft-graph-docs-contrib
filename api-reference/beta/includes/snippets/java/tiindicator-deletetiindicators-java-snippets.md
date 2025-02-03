---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.tiindicators.deletetiindicators.DeleteTiIndicatorsPostRequestBody deleteTiIndicatorsPostRequestBody = new com.microsoft.graph.beta.security.tiindicators.deletetiindicators.DeleteTiIndicatorsPostRequestBody();
LinkedList<String> value = new LinkedList<String>();
value.add("id-value1");
value.add("id-value2");
deleteTiIndicatorsPostRequestBody.setValue(value);
var result = graphClient.security().tiIndicators().deleteTiIndicators().post(deleteTiIndicatorsPostRequestBody);


```