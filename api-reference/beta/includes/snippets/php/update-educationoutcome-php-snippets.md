---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationRubricOutcome();
$requestBody->setOdataType('#microsoft.graph.educationRubricOutcome');

$rubricQualityFeedbackRubricQualityFeedbackModel1 = new RubricQualityFeedbackModel();
$rubricQualityFeedbackRubricQualityFeedbackModel1->setQualityId('9a145aa8-f3d9-43a1-8f77-5387ff0693f2');

$rubricQualityFeedbackRubricQualityFeedbackModel1Feedback = new EducationItemBody();
$rubricQualityFeedbackRubricQualityFeedbackModel1Feedback->setContent('This is feedback specific to the first quality of the rubric.');

$rubricQualityFeedbackRubricQualityFeedbackModel1Feedback->setContentType(new BodyType('text'));


$rubricQualityFeedbackRubricQualityFeedbackModel1->setFeedback($rubricQualityFeedbackRubricQualityFeedbackModel1Feedback);

$rubricQualityFeedbackArray []= $rubricQualityFeedbackRubricQualityFeedbackModel1;
$rubricQualityFeedbackRubricQualityFeedbackModel2 = new RubricQualityFeedbackModel();
$rubricQualityFeedbackRubricQualityFeedbackModel2->setQualityId('d2331fb2-2761-402e-8de6-93e0afaa076e');

$rubricQualityFeedbackRubricQualityFeedbackModel2Feedback = new EducationItemBody();
$rubricQualityFeedbackRubricQualityFeedbackModel2Feedback->setContent('This is feedback specific to the second quality of the rubric.');

$rubricQualityFeedbackRubricQualityFeedbackModel2Feedback->setContentType(new BodyType('text'));


$rubricQualityFeedbackRubricQualityFeedbackModel2->setFeedback($rubricQualityFeedbackRubricQualityFeedbackModel2Feedback);

$rubricQualityFeedbackArray []= $rubricQualityFeedbackRubricQualityFeedbackModel2;
$requestBody->setRubricQualityFeedback($rubricQualityFeedbackArray);


$rubricQualitySelectedLevelsRubricQualitySelectedColumnModel1 = new RubricQualitySelectedColumnModel();
$rubricQualitySelectedLevelsRubricQualitySelectedColumnModel1->setQualityId('9a145aa8-f3d9-43a1-8f77-5387ff0693f2');

$rubricQualitySelectedLevelsRubricQualitySelectedColumnModel1->setColumnId('4fb17a1d-5681-46c2-a295-4e305c3eae23');


$rubricQualitySelectedLevelsArray []= $rubricQualitySelectedLevelsRubricQualitySelectedColumnModel1;
$rubricQualitySelectedLevelsRubricQualitySelectedColumnModel2 = new RubricQualitySelectedColumnModel();
$rubricQualitySelectedLevelsRubricQualitySelectedColumnModel2->setQualityId('d2331fb2-2761-402e-8de6-93e0afaa076e');

$rubricQualitySelectedLevelsRubricQualitySelectedColumnModel2->setColumnId('aac076bf-51ba-48c5-a2e0-ee235b0b9740');


$rubricQualitySelectedLevelsArray []= $rubricQualitySelectedLevelsRubricQualitySelectedColumnModel2;
$requestBody->setRubricQualitySelectedLevels($rubricQualitySelectedLevelsArray);




$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->byEducationOutcomeId('educationOutcome-id')->patch($requestBody);


```