---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignment
{
	DueDateTime = DateTimeOffset.Parse("2022-09-16T00:00:00Z"),
	DisplayName = "Reading test 09.14",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapter 4",
	},
	Grading = new EducationAssignmentGradeType
	{
		OdataType = "#microsoft.graph.educationAssignmentPointsGradeType",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"maxPoints" , 50
			},
		},
	},
	AssignTo = new EducationAssignmentRecipient
	{
		OdataType = "#microsoft.graph.educationAssignmentClassRecipient",
	},
	Status = EducationAssignmentStatus.Draft,
	AllowStudentsToAddResourcesToSubmission = true,
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments.PostAsync(requestBody);


```