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




$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->submissionsById('educationSubmission-id')->outcomesById('educationOutcome-id')->patch($requestBody);


```