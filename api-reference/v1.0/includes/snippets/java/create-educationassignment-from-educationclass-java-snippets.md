---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignment educationAssignment = new EducationAssignment();
educationAssignment.dueDateTime = OffsetDateTimeSerializer.deserialize("2021-09-07T00:00:00Z");
educationAssignment.displayName = "Reading test 09.03 #4";
EducationItemBody instructions = new EducationItemBody();
instructions.contentType = BodyType.TEXT;
instructions.content = "Read chapter 4";
educationAssignment.instructions = instructions;
EducationAssignmentGradeType grading = new EducationAssignmentGradeType();
grading.maxPoints = 50;
educationAssignment.grading = grading;
EducationAssignmentGradeType assignTo = new EducationAssignmentGradeType();
educationAssignment.assignTo = assignTo;
educationAssignment.status = EducationAssignmentStatus.DRAFT;
educationAssignment.allowStudentsToAddResourcesToSubmission = true;

graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignments()
	.buildRequest()
	.post(educationAssignment);

```