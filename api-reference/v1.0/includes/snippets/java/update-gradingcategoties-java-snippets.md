---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationGradingCategory educationGradingCategory = new EducationGradingCategory();
educationGradingCategory.setDisplayName("Test updated");
EducationGradingCategory result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().gradingCategories().byEducationGradingCategoryId("{educationGradingCategory-id}").patch(educationGradingCategory);


```