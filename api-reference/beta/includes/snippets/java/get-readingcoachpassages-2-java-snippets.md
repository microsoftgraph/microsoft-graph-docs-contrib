---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ReadingCoachPassageCollectionResponse result = graphClient.education().reports().readingCoachPassages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "practicedAtDateTime gt 2025-06-22T00:00:00Z and practicedAtDateTime lt 2025-06-23T00:00:00Z";
});


```