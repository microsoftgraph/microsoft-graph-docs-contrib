---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignment educationAssignment = new EducationAssignment();
educationAssignment.displayName = "Reading and review test 09.03 #5";
EducationItemBody instructions = new EducationItemBody();
instructions.contentType = BodyType.TEXT;
instructions.content = "Read chapter 5 and write your review";
educationAssignment.instructions = instructions;
educationAssignment.dueDateTime = OffsetDateTimeSerializer.deserialize("2021-09-10T00:00:00Z");
educationAssignment.addedStudentAction = EducationAddedStudentAction.NONE;

graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignments("4679bc1b-90c5-45af-ae1a-d5357672ed39")
	.buildRequest()
	.patch(educationAssignment);

```