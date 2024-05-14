---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageAssignmentRequest;
use Microsoft\Graph\Generated\Models\AccessPackageAnswer;
use Microsoft\Graph\Generated\Models\AccessPackageAnswerString;
use Microsoft\Graph\Generated\Models\AccessPackageMultipleChoiceQuestion;
use Microsoft\Graph\Generated\Models\AccessPackageTextInputQuestion;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageAssignmentRequest();
$requestBody->setOdataType('#microsoft.graph.accessPackageAssignmentRequest');
$requestBody->setRequestType('userAdd');
$answersAccessPackageAnswer1 = new AccessPackageAnswerString();
$answersAccessPackageAnswer1->setOdataType('#microsoft.graph.accessPackageAnswerString');
$answersAccessPackageAnswer1->setDisplayValue('This is the answer to a multiple choice question');
$answersAccessPackageAnswer1->setValue('MultipleChoiceAnswerValue');
$answersAccessPackageAnswer1AnsweredQuestion = new AccessPackageMultipleChoiceQuestion();
$answersAccessPackageAnswer1AnsweredQuestion->setOdataType('#microsoft.graph.accessPackageMultipleChoiceQuestion');
$answersAccessPackageAnswer1AnsweredQuestion->setId('8fe745e7-80b2-490d-bd22-4e708c77288c');
$answersAccessPackageAnswer1->setAnsweredQuestion($answersAccessPackageAnswer1AnsweredQuestion);
$answersArray []= $answersAccessPackageAnswer1;
$answersAccessPackageAnswer2 = new AccessPackageAnswerString();
$answersAccessPackageAnswer2->setOdataType('#microsoft.graph.accessPackageAnswerString');
$answersAccessPackageAnswer2->setValue('This is my answer to a text input question.');
$answersAccessPackageAnswer2->setDisplayValue('This is my answer.');
$answersAccessPackageAnswer2AnsweredQuestion = new AccessPackageTextInputQuestion();
$answersAccessPackageAnswer2AnsweredQuestion->setOdataType('#microsoft.graph.accessPackageTextInputQuestion');
$answersAccessPackageAnswer2AnsweredQuestion->setId('7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6');
$answersAccessPackageAnswer2->setAnsweredQuestion($answersAccessPackageAnswer2AnsweredQuestion);
$answersArray []= $answersAccessPackageAnswer2;
$requestBody->setAnswers($answersArray);

$additionalData = [
'assignment' => [
	'accessPackageId' => '977c7ff4-ef8f-4910-9d31-49048ddf3120',
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->post($requestBody)->wait();

```