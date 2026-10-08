---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SpeakerAssignmentSubmissionCollectionResponse result = graphClient.education().reports().speakerAssignmentSubmissions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "submissionDateTime gt 2025-05-28T00:00:00Z and submissionDateTime lt 2025-05-29T00:00:00Z";
});


```