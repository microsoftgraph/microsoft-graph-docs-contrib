---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	addedStudentAction = "assignIfOpen"
	addToCalendarAction = "studentsAndTeamOwners"
	notificationChannelUrl = "https://graph.microsoft.com/beta/teams('id')/channels('id')"
}

Update-MgEducationClassAssignmentDefault -EducationClassId $educationClassId -BodyParameter $params

```