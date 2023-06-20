---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningCourseActivity learningCourseActivity = graphClient.users("7ba2228a-e020-11ec-9d64-0242ac120002").employeeExperience().learningCourseActivities("8ba2228a-e020-11ec-9d64-0242ac120003")
	.buildRequest()
	.get();

```