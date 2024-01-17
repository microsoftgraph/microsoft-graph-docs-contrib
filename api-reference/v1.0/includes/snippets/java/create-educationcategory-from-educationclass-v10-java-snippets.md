---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationGradingCategory educationGradingCategory = new EducationGradingCategory();
educationGradingCategory.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"));

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("28992cce-fac0-4950-a836-5a524ded8599").gradingCategory().reference()
	.buildRequest()
	.put(educationGradingCategory);

```