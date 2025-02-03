---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignment educationAssignment = new EducationAssignment();
OffsetDateTime dueDateTime = OffsetDateTime.parse("2022-09-16T00:00:00Z");
educationAssignment.setDueDateTime(dueDateTime);
educationAssignment.setDisplayName("Reading test 09.14 Beta");
EducationItemBody instructions = new EducationItemBody();
instructions.setContentType(BodyType.Text);
instructions.setContent("Read chapter 4");
educationAssignment.setInstructions(instructions);
EducationAssignmentPointsGradeType grading = new EducationAssignmentPointsGradeType();
grading.setOdataType("#microsoft.graph.educationAssignmentPointsGradeType");
grading.setMaxPoints(50f);
educationAssignment.setGrading(grading);
EducationAssignmentClassRecipient assignTo = new EducationAssignmentClassRecipient();
assignTo.setOdataType("#microsoft.graph.educationAssignmentClassRecipient");
educationAssignment.setAssignTo(assignTo);
educationAssignment.setStatus(EducationAssignmentStatus.Draft);
educationAssignment.setAllowStudentsToAddResourcesToSubmission(true);
EducationAssignment result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().post(educationAssignment);


```