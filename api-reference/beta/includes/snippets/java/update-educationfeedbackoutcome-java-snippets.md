---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationFeedbackOutcome educationOutcome = new EducationFeedbackOutcome();
educationOutcome.setOdataType("#microsoft.graph.educationFeedbackOutcome");
EducationFeedback feedback = new EducationFeedback();
EducationItemBody text = new EducationItemBody();
text.setContent("This is feedback for the assignment as a whole.");
text.setContentType(BodyType.Text);
feedback.setText(text);
educationOutcome.setFeedback(feedback);
EducationOutcome result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").outcomes().byEducationOutcomeId("{educationOutcome-id}").patch(educationOutcome);


```