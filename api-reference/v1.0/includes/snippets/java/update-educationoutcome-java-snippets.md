---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationRubricOutcome educationOutcome = new EducationRubricOutcome();
educationOutcome.setOdataType("#microsoft.graph.educationRubricOutcome");
LinkedList<RubricQualityFeedbackModel> rubricQualityFeedback = new LinkedList<RubricQualityFeedbackModel>();
RubricQualityFeedbackModel rubricQualityFeedbackModel = new RubricQualityFeedbackModel();
rubricQualityFeedbackModel.setQualityId("9a145aa8-f3d9-43a1-8f77-5387ff0693f2");
EducationItemBody feedback = new EducationItemBody();
feedback.setContent("This is feedback specific to the first quality of the rubric.");
feedback.setContentType(BodyType.Text);
rubricQualityFeedbackModel.setFeedback(feedback);
rubricQualityFeedback.add(rubricQualityFeedbackModel);
RubricQualityFeedbackModel rubricQualityFeedbackModel1 = new RubricQualityFeedbackModel();
rubricQualityFeedbackModel1.setQualityId("d2331fb2-2761-402e-8de6-93e0afaa076e");
EducationItemBody feedback1 = new EducationItemBody();
feedback1.setContent("This is feedback specific to the second quality of the rubric.");
feedback1.setContentType(BodyType.Text);
rubricQualityFeedbackModel1.setFeedback(feedback1);
rubricQualityFeedback.add(rubricQualityFeedbackModel1);
educationOutcome.setRubricQualityFeedback(rubricQualityFeedback);
LinkedList<RubricQualitySelectedColumnModel> rubricQualitySelectedLevels = new LinkedList<RubricQualitySelectedColumnModel>();
RubricQualitySelectedColumnModel rubricQualitySelectedColumnModel = new RubricQualitySelectedColumnModel();
rubricQualitySelectedColumnModel.setQualityId("9a145aa8-f3d9-43a1-8f77-5387ff0693f2");
rubricQualitySelectedColumnModel.setColumnId("4fb17a1d-5681-46c2-a295-4e305c3eae23");
rubricQualitySelectedLevels.add(rubricQualitySelectedColumnModel);
RubricQualitySelectedColumnModel rubricQualitySelectedColumnModel1 = new RubricQualitySelectedColumnModel();
rubricQualitySelectedColumnModel1.setQualityId("d2331fb2-2761-402e-8de6-93e0afaa076e");
rubricQualitySelectedColumnModel1.setColumnId("aac076bf-51ba-48c5-a2e0-ee235b0b9740");
rubricQualitySelectedLevels.add(rubricQualitySelectedColumnModel1);
educationOutcome.setRubricQualitySelectedLevels(rubricQualitySelectedLevels);
EducationOutcome result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").submissions().byEducationSubmissionId("{educationSubmission-id}").outcomes().byEducationOutcomeId("{educationOutcome-id}").patch(educationOutcome);


```