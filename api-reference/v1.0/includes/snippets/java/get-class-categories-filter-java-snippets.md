---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationCategoryCollectionResponse result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentCategories().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq 'd4cb4f68-9136-48d3-9054-c1208ea274f0'";
});


```