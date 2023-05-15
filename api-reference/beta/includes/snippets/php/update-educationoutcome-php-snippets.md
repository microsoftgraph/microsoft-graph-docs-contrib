---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationOutcome();
$requestBody->set@odatatype('#microsoft.graph.educationRubricOutcome');

$additionalData = [
		'rubricQualityFeedback' => $rubricQualityFeedback1 = new ();
$		rubricQualityFeedback1->setQualityId('9a145aa8-f3d9-43a1-8f77-5387ff0693f2');

$rubricQualityFeedback1Feedback = new Feedback();
$		rubricQualityFeedback1Feedback->setContent('This is feedback specific to the first quality of the rubric.');

$		rubricQualityFeedback1Feedback->setContentType('text');


$rubricQualityFeedback1->setFeedback($rubricQualityFeedback1Feedback);

$rubricQualityFeedbackArray []= $rubricQualityFeedback1;
$rubricQualityFeedback2 = new ();
$		rubricQualityFeedback2->setQualityId('d2331fb2-2761-402e-8de6-93e0afaa076e');

$rubricQualityFeedback2Feedback = new Feedback();
$		rubricQualityFeedback2Feedback->setContent('This is feedback specific to the second quality of the rubric.');

$		rubricQualityFeedback2Feedback->setContentType('text');


$rubricQualityFeedback2->setFeedback($rubricQualityFeedback2Feedback);

$rubricQualityFeedbackArray []= $rubricQualityFeedback2;
$requestBody->setRubricQualityFeedback($rubricQualityFeedbackArray);


	'rubricQualitySelectedLevels' => $rubricQualitySelectedLevels1 = new ();
$	rubricQualitySelectedLevels1->setQualityId('9a145aa8-f3d9-43a1-8f77-5387ff0693f2');

$	rubricQualitySelectedLevels1->setColumnId('4fb17a1d-5681-46c2-a295-4e305c3eae23');


$rubricQualitySelectedLevelsArray []= $rubricQualitySelectedLevels1;
$rubricQualitySelectedLevels2 = new ();
$	rubricQualitySelectedLevels2->setQualityId('d2331fb2-2761-402e-8de6-93e0afaa076e');

$	rubricQualitySelectedLevels2->setColumnId('aac076bf-51ba-48c5-a2e0-ee235b0b9740');


$rubricQualitySelectedLevelsArray []= $rubricQualitySelectedLevels2;
$requestBody->setRubricQualitySelectedLevels($rubricQualitySelectedLevelsArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->submissionsById('educationSubmission-id')->outcomesById('educationOutcome-id')->patch($requestBody);


```