---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationOutcome();
$requestBody->set@odatatype('#microsoft.graph.educationFeedbackResourceOutcome');

$additionalData = [
		'feedbackResource' => $requestBody = new FeedbackResource();
$		requestBody->set@odatatype('#microsoft.graph.educationWordResource');

$		requestBody->setDisplayName('Document1.docx');


$requestBody->setFeedbackResource($feedbackResource);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->submissionsById('educationSubmission-id')->outcomes()->post($requestBody);


```