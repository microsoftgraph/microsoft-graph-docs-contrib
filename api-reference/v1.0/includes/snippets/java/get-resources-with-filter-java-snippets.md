---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentResourceCollectionResponse result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").resources().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq 'bc98d7cd-7cf3-449c-b1b9-3a9683024d4e'";
});


```