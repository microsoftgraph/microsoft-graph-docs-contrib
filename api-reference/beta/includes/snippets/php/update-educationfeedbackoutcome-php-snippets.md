---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationFeedbackOutcome;
use Microsoft\Graph\Beta\Generated\Models\EducationFeedback;
use Microsoft\Graph\Beta\Generated\Models\EducationItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationFeedbackOutcome();
$requestBody->setOdataType('#microsoft.graph.educationFeedbackOutcome');
$feedback = new EducationFeedback();
$feedbackText = new EducationItemBody();
$feedbackText->setContent('This is feedback for the assignment as a whole.');
$feedbackText->setContentType(new BodyType('text'));
$feedback->setText($feedbackText);
$requestBody->setFeedback($feedback);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->byEducationOutcomeId('educationOutcome-id')->patch($requestBody)->wait();

```