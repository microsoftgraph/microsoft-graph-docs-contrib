---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationGradingCategory educationGradingCategory = new EducationGradingCategory();
educationGradingCategory.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/fb4a4009-3cc4-4dea-9991-e0a0763659e3"));

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("452184ea-a358-4a07-92b4-dce44601a612").gradingCategory().reference()
	.buildRequest()
	.put(educationGradingCategory);

```