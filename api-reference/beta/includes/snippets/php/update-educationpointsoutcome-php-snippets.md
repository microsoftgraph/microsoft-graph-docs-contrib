---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationPointsOutcome();
$requestBody->setOdataType('#microsoft.graph.educationPointsOutcome');

$points = new EducationAssignmentPointsGrade();
$points->setOdataType('#microsoft.graph.educationAssignmentPointsGrade');

$points->setPoints(85.0);


$requestBody->setPoints($points);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->byEducationOutcomeId('educationOutcome-id')->patch($requestBody);


```