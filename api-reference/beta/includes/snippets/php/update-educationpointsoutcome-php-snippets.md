---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationOutcome();
$requestBody->set@odatatype('#microsoft.graph.educationPointsOutcome');

$additionalData = [
		'points' => $requestBody = new Points();
$		requestBody->set@odatatype('#microsoft.graph.educationAssignmentPointsGrade');

		$requestBody->setPoints(85.0);


$requestBody->setPoints($points);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->education()->classes()->byClasseId('educationClass-id')->assignments()->byAssignmentId('educationAssignment-id')->submissions()->bySubmissionId('educationSubmission-id')->outcomes()->byOutcomeId('educationOutcome-id')->patch($requestBody);


```