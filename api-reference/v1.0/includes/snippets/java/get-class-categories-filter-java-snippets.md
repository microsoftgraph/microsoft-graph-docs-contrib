---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategoryCollectionPage assignmentCategories = graphClient.education().classes("2003c52e-807a-4186-9b49-60c573095461").assignmentCategories()
	.buildRequest()
	.filter("id eq 'd4cb4f68-9136-48d3-9054-c1208ea274f0'")
	.get();

```