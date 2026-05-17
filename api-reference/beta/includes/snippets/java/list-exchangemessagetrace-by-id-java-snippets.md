---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExchangeMessageTraceCollectionResponse result = graphClient.admin().exchange().tracing().messageTraces().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq 'a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45'";
});


```