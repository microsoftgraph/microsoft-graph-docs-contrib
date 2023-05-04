---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.employeeExperience().learningProviders("13727311-e7bb-470d-8b20-6a23d9030d70").learningCourseActivities("be2f4d76-e020-11ec-9d64-0242ac120002")
	.buildRequest()
	.delete();

```