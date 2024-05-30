---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LearningSelfInitiatedCourse learningCourseActivity = new LearningSelfInitiatedCourse();
learningCourseActivity.setOdataType("#microsoft.graph.learningSelfInitiatedCourse");
learningCourseActivity.setCompletedDateTime(null);
learningCourseActivity.setCompletionPercentage(20);
learningCourseActivity.setExternalCourseActivityId("12a2228a-e020-11ec-9d64-0242ac120002");
learningCourseActivity.setLearningContentId("57baf9dc-e020-11ec-9d64-0242ac120002");
learningCourseActivity.setLearnerUserId("7ba2228a-e020-11ec-9d64-0242ac120002");
OffsetDateTime startedDateTime = OffsetDateTime.parse("2021-05-21T22:57:17+00:00");
learningCourseActivity.setStartedDateTime(startedDateTime);
learningCourseActivity.setStatus(CourseStatus.InProgress);
LearningCourseActivity result = graphClient.employeeExperience().learningProviders().byLearningProviderId("{learningProvider-id}").learningCourseActivities().post(learningCourseActivity);


```