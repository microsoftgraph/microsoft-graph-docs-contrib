---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationFeedbackResourceOutcome();
$requestBody->setOdataType('#microsoft.graph.educationFeedbackResourceOutcome');

$feedbackResource = new EducationWordResource();
$feedbackResource->setOdataType('#microsoft.graph.educationWordResource');

$feedbackResource->setDisplayName('Document1.docx');


$requestBody->setFeedbackResource($feedbackResource);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->post($requestBody);


```