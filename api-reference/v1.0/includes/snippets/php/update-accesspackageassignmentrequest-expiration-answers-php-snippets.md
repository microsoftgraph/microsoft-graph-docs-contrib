---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageRequestType;
use Microsoft\Graph\Generated\Models\AccessPackageAnswer;
use Microsoft\Graph\Generated\Models\AccessPackageAnswerString;
use Microsoft\Graph\Generated\Models\AccessPackageTextInputQuestion;
use Microsoft\Graph\Generated\Models\EntitlementManagementSchedule;
use Microsoft\Graph\Generated\Models\ExpirationPattern;
use Microsoft\Graph\Generated\Models\ExpirationPatternType;
use Microsoft\Graph\Generated\Models\AccessPackageAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setRequestType(new AccessPackageRequestType('userUpdate'));
$answersAccessPackageAnswer1 = new AccessPackageAnswerString();
$answersAccessPackageAnswer1->setOdataType('#microsoft.graph.accessPackageAnswerString');
$answersAccessPackageAnswer1->setValue('My updated answer.');
$answersAccessPackageAnswer1AnsweredQuestion = new AccessPackageTextInputQuestion();
$answersAccessPackageAnswer1AnsweredQuestion->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');
$answersAccessPackageAnswer1AnsweredQuestion->setId('0d31cc60-968e-4f92-955b-443fed03d6f6');
$answersAccessPackageAnswer1->setAnsweredQuestion($answersAccessPackageAnswer1AnsweredQuestion);
$answersArray []= $answersAccessPackageAnswer1;
$requestBody->setAnswers($answersArray);

$schedule = new EntitlementManagementSchedule();
$schedule->setStartDateTime(new \DateTime('2024-09-18T20:49:16.17Z'));
$schedule->setRecurrence(null);
$scheduleExpiration = new ExpirationPattern();
$scheduleExpiration->setEndDateTime(new \DateTime('2024-10-18T20:49:15.17Z'));
$scheduleExpiration->setDuration(null);
$scheduleExpiration->setType(new ExpirationPatternType('afterDateTime'));
$schedule->setExpiration($scheduleExpiration);
$requestBody->setSchedule($schedule);
$assignment = new AccessPackageAssignment();
$assignment->setId('329f8dac-8062-4c1b-a9b8-39b7132f9bff');
$requestBody->setAssignment($assignment);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```