---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignment;
use Microsoft\Graph\Generated\Models\EducationItemBody;
use Microsoft\Graph\Generated\Models\EducationAssignmentPointsGradeType;
use Microsoft\Graph\Generated\Models\EducationAssignmentClassRecipient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignment();
$requestBody->setDueDateTime(new \DateTime('2022-09-16T00:00:00Z'));
$requestBody->setDisplayName('Reading test 09.14');
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