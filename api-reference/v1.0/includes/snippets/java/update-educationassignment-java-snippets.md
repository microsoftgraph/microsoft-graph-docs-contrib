---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignment educationAssignment = new EducationAssignment();
educationAssignment.setDisplayName("Reading and review test 09.03 #5");
EducationItemBody instructions = new EducationItemBody();
instructions.setContentType(BodyType.Text);
instructions.setContent("Read chapter 5 and write your review");
educationAssignment.setInstructions(instructions);
OffsetDateTime dueDateTime = OffsetDateTime.parse("2021-09-10T00:00:00Z");
educationAssignment.setDueDateTime(dueDateTime);
educationAssignment.setAddedStudentAction(EducationAddedStudentAction.None);
EducationAssignment result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").patch(educationAssignment);


```