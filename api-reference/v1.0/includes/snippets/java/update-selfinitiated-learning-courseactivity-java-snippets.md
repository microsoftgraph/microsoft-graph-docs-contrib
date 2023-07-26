---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningSelfInitiatedCourse learningCourseActivity = new LearningSelfInitiatedCourse();
learningCourseActivity.completedDateTime = OffsetDateTimeSerializer.deserialize("null");
learningCourseActivity.completionPercentage = 30;
learningCourseActivity.externalCourseActivityId = "12a2228a-e020-11ec-9d64-0242ac120002";
learningCourseActivity.learningContentId = "57baf9dc-e020-11ec-9d64-0242ac120002";
learningCourseActivity.learningProviderId = "01e8f81b-3060-4dec-acf0-0389665a0a38";
learningCourseActivity.startedDateTime = OffsetDateTimeSerializer.deserialize("2021-05-11T22:57:17+00:00");
learningCourseActivity.status = CourseStatus.IN_PROGRESS;

graphClient.employeeExperience().learningProviders("01e8f81b-3060-4dec-acf0-0389665a0a38").learningCourseActivities("8ba2228a-e020-11ec-9d64-0242ac120003")
	.buildRequest()
	.patch(learningCourseActivity);

```