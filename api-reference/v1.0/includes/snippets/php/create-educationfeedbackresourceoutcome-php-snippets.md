---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationFeedbackResourceOutcome;
use Microsoft\Graph\Generated\Models\EducationWordResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationFeedbackResourceOutcome();
$requestBody->setOdataType('#microsoft.graph.educationFeedbackResourceOutcome');
$feedbackResource = new EducationWordResource();
$feedbackResource->setOdataType('#microsoft.graph.educationWordResource');
$feedbackResource->setDisplayName('Document1.docx');
$requestBody->setFeedbackResource($feedbackResource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->post($requestBody)->wait();

```