---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ReadingAssignmentSubmissionCollectionResponse result = graphClient.education().reports().readingAssignmentSubmissions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "submissionDateTime gt 2023-10-10T00:00:00.000Z and submissionDateTime lt 2023-10-11T00:00:00Z";
});


```