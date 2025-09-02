---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ReflectCheckInResponseCollectionResponse result = graphClient.education().reports().reflectCheckInResponses().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "submitDateTime gt 2025-06-11T00:00:00.000Z and submitDateTime lt 2025-06-12T00:00:00Z";
});


```