---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationFeedbackResourceOutcome();
$requestBody->setOdataType('#microsoft.graph.educationFeedbackResourceOutcome');
$feedbackResource = new EducationWordResource();
$feedbackResource->setOdataType('#microsoft.graph.educationWordResource');
$feedbackResource->setDisplayName('Document1.docx');
$requestBody->setFeedbackResource($feedbackResource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->post($requestBody)->wait();

```