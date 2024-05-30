---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentSettings educationAssignmentSettings = new EducationAssignmentSettings();
LinkedList<EducationGradingCategory> gradingCategories = new LinkedList<EducationGradingCategory>();
EducationGradingCategory educationGradingCategory = new EducationGradingCategory();
educationGradingCategory.setDisplayName("Lab");
educationGradingCategory.setPercentageWeight(10);
gradingCategories.add(educationGradingCategory);
EducationGradingCategory educationGradingCategory1 = new EducationGradingCategory();
educationGradingCategory1.setDisplayName("Homework");
educationGradingCategory1.setPercentageWeight(80);
gradingCategories.add(educationGradingCategory1);
EducationGradingCategory educationGradingCategory2 = new EducationGradingCategory();
educationGradingCategory2.setDisplayName("Test");
educationGradingCategory2.setPercentageWeight(10);
gradingCategories.add(educationGradingCategory2);
educationAssignmentSettings.setGradingCategories(gradingCategories);
EducationAssignmentSettings result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentSettings().patch(educationAssignmentSettings);


```