---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LearningAssignment learningCourseActivity = new LearningAssignment();
learningCourseActivity.setOdataType("#microsoft.graph.learningAssignment");
OffsetDateTime assignedDateTime = OffsetDateTime.parse("2021-05-11T22:57:17+00:00");
learningCourseActivity.setAssignedDateTime(assignedDateTime);
learningCourseActivity.setAssignmentType(AssignmentType.Required);
learningCourseActivity.setAssignerUserId("cea1684d-57dc-438d-a9d1-e666ec1a7f3d");
learningCourseActivity.setCompletedDateTime(null);
learningCourseActivity.setCompletionPercentage(20);
learningCourseActivity.setLearningProviderId("01e8f81b-3060-4dec-acf0-0389665a0a38");
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.setDateTime("2022-09-22T16:05:00.0000000");
dueDateTime.setTimeZone("UTC");
learningCourseActivity.setDueDateTime(dueDateTime);
learningCourseActivity.setExternalcourseActivityId("12a2228a-e020-11ec-9d64-0242ac120002");
learningCourseActivity.setLearningContentId("57baf9dc-e020-11ec-9d64-0242ac120002");
learningCourseActivity.setLearnerUserId("7ba2228a-e020-11ec-9d64-0242ac120002");
ItemBody notes = new ItemBody();
notes.setContentType(BodyType.Text);
notes.setContent("required assignment added for user");
learningCourseActivity.setNotes(notes);
learningCourseActivity.setStatus(CourseStatus.InProgress);
LearningCourseActivity result = graphClient.employeeExperience().learningProviders().byLearningProviderId("{learningProvider-id}").learningCourseActivities().byLearningCourseActivityId("{learningCourseActivity-id}").patch(learningCourseActivity);


```