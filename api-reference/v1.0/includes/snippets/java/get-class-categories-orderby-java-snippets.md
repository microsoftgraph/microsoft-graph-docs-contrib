---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategoryCollectionPage assignmentCategories = graphClient.education().classes("2003c52e-807a-4186-9b49-60c573095461").assignmentCategories()
	.buildRequest()
	.orderBy("displayName")
	.get();

```