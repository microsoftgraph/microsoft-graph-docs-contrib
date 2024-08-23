---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationCategory educationCategory = new EducationCategory();
educationCategory.setDisplayName("Quizzes");
EducationCategory result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentCategories().post(educationCategory);


```