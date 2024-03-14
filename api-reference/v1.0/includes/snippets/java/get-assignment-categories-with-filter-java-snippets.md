---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationCategoryCollectionResponse result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").categories().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq '74b03ab5-5832-4f99-89f5-d52da13d93f7'";
});


```