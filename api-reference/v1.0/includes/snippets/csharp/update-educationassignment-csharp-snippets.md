---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EducationAssignment
{
	DisplayName = "Reading and review test 09.03 #5",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapter 5 and write your review",
	},
	DueDateTime = DateTimeOffset.Parse("2021-09-10T00:00:00Z"),
	AddedStudentAction = EducationAddedStudentAction.None,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].PatchAsync(requestBody);


```