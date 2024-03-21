---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentDefaults educationAssignmentDefaults = new EducationAssignmentDefaults();
educationAssignmentDefaults.setAddedStudentAction(EducationAddedStudentAction.AssignIfOpen);
educationAssignmentDefaults.setAddToCalendarAction(EducationAddToCalendarOptions.StudentsAndTeamOwners);
educationAssignmentDefaults.setNotificationChannelUrl("https://graph.microsoft.com/beta/teams('id')/channels('id')");
EducationAssignmentDefaults result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentDefaults().patch(educationAssignmentDefaults);


```