---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentSettings educationAssignmentSettings = new EducationAssignmentSettings();
LinkedList<EducationGradingCategory> gradingCategoriesList = new LinkedList<EducationGradingCategory>();
EducationGradingCategory gradingCategories = new EducationGradingCategory();
gradingCategories.displayName = "Lab";
gradingCategories.percentageWeight = 10;
gradingCategoriesList.add(gradingCategories);
EducationGradingCategory gradingCategories1 = new EducationGradingCategory();
gradingCategories1.displayName = "Homework";
gradingCategories1.percentageWeight = 80;
gradingCategoriesList.add(gradingCategories1);
EducationGradingCategory gradingCategories2 = new EducationGradingCategory();
gradingCategories2.displayName = "Test";
gradingCategories2.percentageWeight = 10;
gradingCategoriesList.add(gradingCategories2);
EducationGradingCategoryCollectionResponse educationGradingCategoryCollectionResponse = new EducationGradingCategoryCollectionResponse();
educationGradingCategoryCollectionResponse.value = gradingCategoriesList;
EducationGradingCategoryCollectionPage educationGradingCategoryCollectionPage = new EducationGradingCategoryCollectionPage(educationGradingCategoryCollectionResponse, null);
educationAssignmentSettings.gradingCategories = educationGradingCategoryCollectionPage;

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignmentSettings()
	.buildRequest()
	.patch(educationAssignmentSettings);

```