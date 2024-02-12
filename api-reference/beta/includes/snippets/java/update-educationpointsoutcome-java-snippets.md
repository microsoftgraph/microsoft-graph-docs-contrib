---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationPointsOutcome educationOutcome = new EducationPointsOutcome();
educationOutcome.setOdataType("#microsoft.graph.educationPointsOutcome");
EducationAssignmentPointsGrade points = new EducationAssignmentPointsGrade();
points.setOdataType("#microsoft.graph.educationAssignmentPointsGrade");
points.setPoints(85.0f);
educationOutcome.setPoints(points);
EducationOutcome result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").outcomes().byEducationOutcomeId("{educationOutcome-id}").patch(educationOutcome);


```