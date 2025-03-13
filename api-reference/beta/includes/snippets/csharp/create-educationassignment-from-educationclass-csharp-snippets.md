---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationAssignment
{
	DueDateTime = DateTimeOffset.Parse("2022-09-16T00:00:00Z"),
	DisplayName = "Reading test 09.14 Beta",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapter 4",
	},
	Grading = new EducationAssignmentPointsGradeType
	{
		OdataType = "#microsoft.graph.educationAssignmentPointsGradeType",
		MaxPoints = 50f,
	},
	AssignTo = new EducationAssignmentClassRecipient
	{
		OdataType = "#microsoft.graph.educationAssignmentClassRecipient",
	},
	Status = EducationAssignmentStatus.Draft,
	AllowStudentsToAddResourcesToSubmission = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments.PostAsync(requestBody);


```