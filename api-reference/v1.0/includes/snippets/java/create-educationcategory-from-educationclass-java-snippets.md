---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategory educationCategory = new EducationCategory();
educationCategory.displayName = "Quizzes";

graphClient.education().classes("60eaa744-aa87-4276-b985-1633683119f8").assignmentCategories()
	.buildRequest()
	.post(educationCategory);

```