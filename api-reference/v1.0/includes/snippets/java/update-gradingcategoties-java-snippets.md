---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationGradingCategory educationGradingCategory = new EducationGradingCategory();
educationGradingCategory.displayName = "Test updated";

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignmentSettings().gradingCategories("a5ca6dda-f220-43ca-81e4-02396b99f398")
	.buildRequest()
	.patch(educationGradingCategory);

```