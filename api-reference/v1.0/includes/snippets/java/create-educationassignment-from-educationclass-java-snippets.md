---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignment educationAssignment = new EducationAssignment();
educationAssignment.dueDateTime = OffsetDateTimeSerializer.deserialize("2022-09-16T00:00:00Z");
educationAssignment.displayName = "Reading test 09.14";
EducationItemBody instructions = new EducationItemBody();
instructions.contentType = BodyType.TEXT;
instructions.content = "Read chapter 4";
educationAssignment.instructions = instructions;
EducationAssignmentPointsGradeType grading = new EducationAssignmentPointsGradeType();
grading.maxPoints = 50;
educationAssignment.grading = grading;
EducationAssignmentClassRecipient assignTo = new EducationAssignmentClassRecipient();
educationAssignment.assignTo = assignTo;
educationAssignment.status = EducationAssignmentStatus.DRAFT;
educationAssignment.allowStudentsToAddResourcesToSubmission = true;

graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignments()
	.buildRequest()
	.post(educationAssignment);

```