---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationAssignment;
use Microsoft\Graph\Beta\Generated\Models\EducationItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\EducationAssignmentPointsGradeType;
use Microsoft\Graph\Beta\Generated\Models\EducationAssignmentClassRecipient;
use Microsoft\Graph\Beta\Generated\Models\EducationAssignmentStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignment();
$requestBody->setDueDateTime(new \DateTime('2025-09-16T00:00:00Z'));
$requestBody->setDisplayName('Reading test 09.14');
$requestBody->setLanguageTag('es-MX');
$instructions = new EducationItemBody();
$instructions->setContentType(new BodyType('text'));
$instructions->setContent('Read chapter 4');
$requestBody->setInstructions($instructions);
$grading = new EducationAssignmentPointsGradeType();
$grading->setOdataType('#microsoft.graph.educationAssignmentPointsGradeType');
$grading->setMaxPoints(50);
$requestBody->setGrading($grading);
$assignTo = new EducationAssignmentClassRecipient();
$assignTo->setOdataType('#microsoft.graph.educationAssignmentClassRecipient');
$requestBody->setAssignTo($assignTo);
$requestBody->setStatus(new EducationAssignmentStatus('draft'));
$requestBody->setAllowStudentsToAddResourcesToSubmission(true);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->post($requestBody)->wait();

```