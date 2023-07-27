---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningAssignment learningCourseActivity = new LearningAssignment();
learningCourseActivity.assignedDateTime = OffsetDateTimeSerializer.deserialize("2021-05-11T22:57:17+00:00");
learningCourseActivity.assignmentType = AssignmentType.REQUIRED;
learningCourseActivity.assignerUserId = "cea1684d-57dc-438d-a9d1-e666ec1a7f3d";
learningCourseActivity.completedDateTime = OffsetDateTimeSerializer.deserialize("null");
learningCourseActivity.completionPercentage = 20;
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.dateTime = "2022-09-22T16:05:00";
dueDateTime.timeZone = "UTC";
learningCourseActivity.dueDateTime = dueDateTime;
learningCourseActivity.externalCourseActivityId = "12a2228a-e020-11ec-9d64-0242ac120002";
learningCourseActivity.learningContentId = "57baf9dc-e020-11ec-9d64-0242ac120002";
learningCourseActivity.learningProviderId = "01e8f81b-3060-4dec-acf0-0389665a0a38";
learningCourseActivity.learnerUserId = "7ba2228a-e020-11ec-9d64-0242ac120002";
ItemBody notes = new ItemBody();
notes.contentType = BodyType.TEXT;
notes.content = "required assignment added for user";
learningCourseActivity.notes = notes;
learningCourseActivity.status = CourseStatus.NOT_STARTED;

graphClient.employeeExperience().learningProviders("01e8f81b-3060-4dec-acf0-0389665a0a38").learningCourseActivities()
	.buildRequest()
	.post(learningCourseActivity);

```