---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationSubmissionCollectionResponse result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq 'ff2c7fe6-91cd-57a4-aa62-5b9c6b73222a'";
});


```