---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LearningSelfInitiatedCourse
{
	OdataType = "#microsoft.graph.learningSelfInitiatedCourse",
	CompletedDateTime = null,
	CompletionPercentage = 30,
	ExternalCourseActivityId = "12a2228a-e020-11ec-9d64-0242ac120002",
	LearningContentId = "57baf9dc-e020-11ec-9d64-0242ac120002",
	LearningProviderId = "01e8f81b-3060-4dec-acf0-0389665a0a38",
	StartedDateTime = DateTimeOffset.Parse("2021-05-11T22:57:17+00:00"),
	Status = CourseStatus.InProgress,
};
var result = await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].LearningCourseActivities["{learningCourseActivity-id}"].PatchAsync(requestBody);


```