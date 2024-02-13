---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.callrecords.CallRecordCollectionResponse result = graphClient.communications().callRecords().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z";
});


```