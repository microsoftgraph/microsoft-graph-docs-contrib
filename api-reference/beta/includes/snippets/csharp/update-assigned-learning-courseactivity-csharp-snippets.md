---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new LearningAssignment
{
	OdataType = "#microsoft.graph.learningAssignment",
	AssignedDateTime = DateTimeOffset.Parse("2021-05-11T22:57:17+00:00"),
	AssignmentType = AssignmentType.Required,
	AssignerUserId = "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
	CompletedDateTime = null,
	CompletionPercentage = 20,
	LearningProviderId = "01e8f81b-3060-4dec-acf0-0389665a0a38",
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2022-09-22T16:05:00.0000000",
		TimeZone = "UTC",
	},
	ExternalCourseActivityId = "12a2228a-e020-11ec-9d64-0242ac120002",
	LearningContentId = "57baf9dc-e020-11ec-9d64-0242ac120002",
	LearnerUserId = "7ba2228a-e020-11ec-9d64-0242ac120002",
	Notes = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "required assignment added for user",
	},
	Status = CourseStatus.InProgress,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.EmployeeExperience.LearningProviders["{learningProvider-id}"].LearningCourseActivities["{learningCourseActivity-id}"].PatchAsync(requestBody);


```