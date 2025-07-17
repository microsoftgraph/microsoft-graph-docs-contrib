---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationPointsOutcome;
use Microsoft\Graph\Beta\Generated\Models\EducationAssignmentPointsGrade;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationPointsOutcome();
$requestBody->setOdataType('#microsoft.graph.educationPointsOutcome');
$points = new EducationAssignmentPointsGrade();
$points->setOdataType('#microsoft.graph.educationAssignmentPointsGrade');
$points->setPoints(85.5);
$requestBody->setPoints($points);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->outcomes()->byEducationOutcomeId('educationOutcome-id')->patch($requestBody)->wait();

```