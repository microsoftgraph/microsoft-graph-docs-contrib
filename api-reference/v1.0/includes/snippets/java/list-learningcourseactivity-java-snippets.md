---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningCourseActivityCollectionWithReferencesPage learningCourseActivities = graphClient.users("7ba2228a-e020-11ec-9d64-0242ac120002").employeeExperience().learningCourseActivities()
	.buildRequest()
	.get();

```