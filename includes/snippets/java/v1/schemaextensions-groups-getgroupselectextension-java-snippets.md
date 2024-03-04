---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupCollectionResponse result = graphClient.groups().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "bellowscollege_courses/courseId eq '123'";
	requestConfiguration.queryParameters.select = new String []{"displayName", "id", "description", "bellowscollege_courses"};
});


```