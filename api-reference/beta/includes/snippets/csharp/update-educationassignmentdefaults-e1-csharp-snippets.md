---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignmentDefaults
{
	AddedStudentAction = EducationAddedStudentAction.AssignIfOpen,
	AddToCalendarAction = EducationAddToCalendarOptions.StudentsAndTeamOwners,
	NotificationChannelUrl = "https://graph.microsoft.com/beta/teams('id')/channels('id')",
};
var result = await graphClient.Education.Classes["{educationClass-id}"].AssignmentDefaults.PatchAsync(requestBody);


```