---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationFeedbackResourceOutcome educationOutcome = new EducationFeedbackResourceOutcome();
educationOutcome.setOdataType("#microsoft.graph.educationFeedbackResourceOutcome");
EducationWordResource feedbackResource = new EducationWordResource();
feedbackResource.setOdataType("#microsoft.graph.educationWordResource");
feedbackResource.setDisplayName("Document1.docx");
educationOutcome.setFeedbackResource(feedbackResource);
EducationOutcome result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").outcomes().post(educationOutcome);


```