---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentCollectionResponse result = graphClient.education().me().assignments().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "dueDateTime eq 2050-05-18T17:00:00Z";
});


```