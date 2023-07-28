---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MeetingRegistrant();
$requestBody->setOdataType('#microsoft.graph.meetingRegistrant');

$requestBody->setFirstName('Frederick');

$requestBody->setLastName('Cormier');

$requestBody->setEmail('frederick.cormier@contoso.com');

$customQuestionAnswersCustomQuestionAnswer1 = new CustomQuestionAnswer();
$customQuestionAnswersCustomQuestionAnswer1->setQuestionId('MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=');

$customQuestionAnswersCustomQuestionAnswer1->setValue('No');


$customQuestionAnswersArray []= $customQuestionAnswersCustomQuestionAnswer1;
$customQuestionAnswersCustomQuestionAnswer2 = new CustomQuestionAnswer();
$customQuestionAnswersCustomQuestionAnswer2->setQuestionId('MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=');

$customQuestionAnswersCustomQuestionAnswer2->setValue('Internet');


$customQuestionAnswersArray []= $customQuestionAnswersCustomQuestionAnswer2;
$requestBody->setCustomQuestionAnswers($customQuestionAnswersArray);




$result = $graphServiceClient->users()->byUserId('user-id')->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->registrants()->post($requestBody);


```