---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.translateexchangeids.TranslateExchangeIdsPostRequestBody translateExchangeIdsPostRequestBody = new com.microsoft.graph.beta.users.item.translateexchangeids.TranslateExchangeIdsPostRequestBody();
LinkedList<String> inputIds = new LinkedList<String>();
inputIds.add("{rest-formatted-id-1}");
inputIds.add("{rest-formatted-id-2}");
translateExchangeIdsPostRequestBody.setInputIds(inputIds);
translateExchangeIdsPostRequestBody.setSourceIdType(ExchangeIdFormat.RestId);
translateExchangeIdsPostRequestBody.setTargetIdType(ExchangeIdFormat.RestImmutableEntryId);
var result = graphClient.me().translateExchangeIds().post(translateExchangeIdsPostRequestBody);


```