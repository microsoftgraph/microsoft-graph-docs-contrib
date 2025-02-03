---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentDefaults educationAssignmentDefaults = new EducationAssignmentDefaults();
educationAssignmentDefaults.setAddedStudentAction(EducationAddedStudentAction.AssignIfOpen);
educationAssignmentDefaults.setNotificationChannelUrl("https://graph.microsoft.com/beta/teams('acdefc6b-2dc6-4e71-b1e9-6d9810ab1793')/channels('3da03fc4-8eac-4459-84fb-1422dc01f65e')");
EducationAssignmentDefaults result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignmentDefaults().patch(educationAssignmentDefaults);


```