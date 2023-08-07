---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationRubricOutcome()
request_body.@odata_type = '#microsoft.graph.educationRubricOutcome'

rubric_quality_feedback_rubric_quality_feedback_model1 = RubricQualityFeedbackModel()
rubric_quality_feedback_rubric_quality_feedback_model1.quality_id = '9a145aa8-f3d9-43a1-8f77-5387ff0693f2'

rubric_quality_feedback_rubric_quality_feedback_model1feedback = EducationItemBody()
rubric_quality_feedback_rubric_quality_feedback_model1feedback.content = 'This is feedback specific to the first quality of the rubric.'

rubric_quality_feedback_rubric_quality_feedback_model1feedback.contenttype(BodyType.Text('bodytype.text'))


rubric_quality_feedback_rubric_quality_feedback_model1.feedback = rubric_quality_feedback_rubric_quality_feedback_model1feedback

rubricQualityFeedbackArray []= rubricQualityFeedbackRubricQualityFeedbackModel1;
rubric_quality_feedback_rubric_quality_feedback_model2 = RubricQualityFeedbackModel()
rubric_quality_feedback_rubric_quality_feedback_model2.quality_id = 'd2331fb2-2761-402e-8de6-93e0afaa076e'

rubric_quality_feedback_rubric_quality_feedback_model2feedback = EducationItemBody()
rubric_quality_feedback_rubric_quality_feedback_model2feedback.content = 'This is feedback specific to the second quality of the rubric.'

rubric_quality_feedback_rubric_quality_feedback_model2feedback.contenttype(BodyType.Text('bodytype.text'))


rubric_quality_feedback_rubric_quality_feedback_model2.feedback = rubric_quality_feedback_rubric_quality_feedback_model2feedback

rubricQualityFeedbackArray []= rubricQualityFeedbackRubricQualityFeedbackModel2;
request_body.rubricqualityfeedback(rubricQualityFeedbackArray)


rubric_quality_selected_levels_rubric_quality_selected_column_model1 = RubricQualitySelectedColumnModel()
rubric_quality_selected_levels_rubric_quality_selected_column_model1.quality_id = '9a145aa8-f3d9-43a1-8f77-5387ff0693f2'

rubric_quality_selected_levels_rubric_quality_selected_column_model1.column_id = '4fb17a1d-5681-46c2-a295-4e305c3eae23'


rubricQualitySelectedLevelsArray []= rubricQualitySelectedLevelsRubricQualitySelectedColumnModel1;
rubric_quality_selected_levels_rubric_quality_selected_column_model2 = RubricQualitySelectedColumnModel()
rubric_quality_selected_levels_rubric_quality_selected_column_model2.quality_id = 'd2331fb2-2761-402e-8de6-93e0afaa076e'

rubric_quality_selected_levels_rubric_quality_selected_column_model2.column_id = 'aac076bf-51ba-48c5-a2e0-ee235b0b9740'


rubricQualitySelectedLevelsArray []= rubricQualitySelectedLevelsRubricQualitySelectedColumnModel2;
request_body.rubricqualityselectedlevels(rubricQualitySelectedLevelsArray)





result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').outcomes.by_outcome_id('educationOutcome-id').patch(request_body = request_body)


```