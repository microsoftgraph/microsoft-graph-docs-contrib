---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationFeedbackResourceOutcome();
$requestBody->set@odatatype('#microsoft.graph.educationFeedbackResourceOutcome');

$feedbackResource = new EducationWordResource();
$feedbackResource->set@odatatype('#microsoft.graph.educationWordResource');

$feedbackResource->setDisplayName('Document1.docx');


$requestBody->setFeedbackResource($feedbackResource);


$result = $graphServiceClient->education()->classes()->byClasseId('educationClass-id')->assignments()->byAssignmentId('educationAssignment-id')->submissions()->bySubmissionId('educationSubmission-id')->outcomes()->post($requestBody);


```