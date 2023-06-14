---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationGradingCategory educationGradingCategory = new EducationGradingCategory();
educationGradingCategory.displayName = "Quiz-1";

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignmentSettings().gradingCategories("8bfb6d7f-8634-4f3b-9b6a-b6b6ff663f01")
	.buildRequest()
	.patch(educationGradingCategory);

```