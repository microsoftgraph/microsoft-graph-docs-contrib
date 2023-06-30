---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationFeedbackOutcome();
$requestBody->set@odatatype('#microsoft.graph.educationFeedbackOutcome');

$feedback = new EducationFeedback();
$feedbackText = new EducationItemBody();
$feedbackText->setContent('This is feedback for the assignment as a whole.');

$feedbackText->setContentType(new BodyType('text'));


$feedback->setText($feedbackText);

$requestBody->setFeedback($feedback);


$result = $graphServiceClient->education()->classes()->byClasseId('educationClass-id')->assignments()->byAssignmentId('educationAssignment-id')->submissions()->bySubmissionId('educationSubmission-id')->outcomes()->byOutcomeId('educationOutcome-id')->patch($requestBody);


```