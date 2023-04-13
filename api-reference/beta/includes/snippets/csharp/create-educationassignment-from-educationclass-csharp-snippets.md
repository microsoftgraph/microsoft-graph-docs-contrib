---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignment = new EducationAssignment
{
	DueDateTime = DateTimeOffset.Parse("2022-09-16T00:00:00Z"),
	DisplayName = "Reading test 09.14 Beta",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapter 4"
	},
	Grading = new EducationAssignmentPointsGradeType
	{
		MaxPoints = 50f
	},
	AssignTo = new EducationAssignmentClassRecipient
	{
	},
	Status = EducationAssignmentStatus.Draft,
	AllowStudentsToAddResourcesToSubmission = true
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments
	.Request()
	.AddAsync(educationAssignment);

```