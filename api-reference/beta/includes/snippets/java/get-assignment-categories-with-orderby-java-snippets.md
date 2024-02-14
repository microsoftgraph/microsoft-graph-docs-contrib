---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationCategoryCollectionResponse result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").categories().get(requestConfiguration -> {
	requestConfiguration.queryParameters.orderby = new String []{"id"};
});


```