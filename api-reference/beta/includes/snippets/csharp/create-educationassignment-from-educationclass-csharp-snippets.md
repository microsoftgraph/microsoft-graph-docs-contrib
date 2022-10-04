---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationAssignment = new EducationAssignment
{
	DueDateTime = DateTimeOffset.Parse("2021-09-07T00:00:00Z"),
	DisplayName = "Reading test 09.03 #4",
	Instructions = new EducationItemBody
	{
		ContentType = BodyType.Text,
		Content = "Read chapter 4"
	},
	Grading = new EducationAssignmentGradeType
	{
		MaxPoints = 50f
	},
	AssignTo = new EducationAssignmentGradeType
	{
	},
	Status = EducationAssignmentStatus.Draft,
	AllowStudentsToAddResourcesToSubmission = true
};

await graphClient.Education.Classes["{educationClass-id}"].Assignments
	.Request()
	.AddAsync(educationAssignment);

```