---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignment;
use Microsoft\Graph\Generated\Models\EducationItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignment();
$requestBody->setDisplayName('Reading and review test 09.03 #5');
$instructions = new EducationItemBody();
$instructions->setContentType(new BodyType('text'));
$instructions->setContent('Read chapter 5 and write your review');
$requestBody->setInstructions($instructions);
$requestBody->setDueDateTime(new \DateTime('2021-09-10T00:00:00Z'));
$requestBody->setAddedStudentAction(new EducationAddedStudentAction('none'));
$requestBody->setAddToCalendarAction(new EducationAddToCalendarOptions('studentsAndPublisher'));

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->patch($requestBody)->wait();

```