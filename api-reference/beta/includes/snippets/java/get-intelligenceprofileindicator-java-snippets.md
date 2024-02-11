---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.IntelligenceProfileIndicator result = graphClient.security().threatIntelligence().intelligenceProfileIndicators().byIntelligenceProfileIndicatorId("{intelligenceProfileIndicator-id}").get();


```