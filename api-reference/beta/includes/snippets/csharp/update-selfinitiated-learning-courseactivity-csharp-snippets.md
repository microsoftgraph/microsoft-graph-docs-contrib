---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LearningCourseActivity
{
	OdataType = "#microsoft.graph.learningSelfInitiatedCourse",
	CompletedDateTime = null,
	CompletionPercentage = 30,
	ExternalCourseActivityId = "12a2228a-e020-11ec-9d64-0242ac120002",
	LearningContentId = "57baf9dc-e020-11ec-9d64-0242ac120002",
	LearningProviderId = "01e8f81b-3060-4dec-acf0-0389665a0a38",
	Status = CourseStatus.InProgress,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"startedDateTime" , "2021-05-11T22:57:17+00:00"
		},
	},
};
var result = await graphClient.EmployeeExperience.LearningCourseActivities["{learningCourseActivity-id}"].PatchAsync(requestBody);


```