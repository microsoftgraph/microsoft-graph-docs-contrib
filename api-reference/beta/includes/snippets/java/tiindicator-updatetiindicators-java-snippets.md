---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.tiindicators.updatetiindicators.UpdateTiIndicatorsPostRequestBody updateTiIndicatorsPostRequestBody = new com.microsoft.graph.beta.security.tiindicators.updatetiindicators.UpdateTiIndicatorsPostRequestBody();
LinkedList<TiIndicator> value = new LinkedList<TiIndicator>();
TiIndicator tiIndicator = new TiIndicator();
tiIndicator.setId("c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4");
tiIndicator.setAdditionalInformation("mytest");
value.add(tiIndicator);
TiIndicator tiIndicator1 = new TiIndicator();
tiIndicator1.setId("e58c072b-c9bb-a5c4-34ce-eb69af44fb1e");
tiIndicator1.setAdditionalInformation("test again");
value.add(tiIndicator1);
updateTiIndicatorsPostRequestBody.setValue(value);
var result = graphClient.security().tiIndicators().updateTiIndicators().post(updateTiIndicatorsPostRequestBody);


```