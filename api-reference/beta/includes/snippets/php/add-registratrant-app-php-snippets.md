---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MeetingRegistrantBase();
$requestBody->set@odatatype('#microsoft.graph.meetingRegistrant');

$additionalData = [
		'firstName' => 'Lisa', 
		'lastName' => 'Adkins', 
		'email' => 'lisa.adkins@contoso.com', 
		'customQuestionAnswers' => $customQuestionAnswers1 = new ();
$		customQuestionAnswers1->setQuestionId('MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=');

$		customQuestionAnswers1->setValue('No');


$customQuestionAnswersArray []= $customQuestionAnswers1;
$customQuestionAnswers2 = new ();
$		customQuestionAnswers2->setQuestionId('MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=');

$		customQuestionAnswers2->setValue('Internet');


$customQuestionAnswersArray []= $customQuestionAnswers2;
$requestBody->setCustomQuestionAnswers($customQuestionAnswersArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->users()->byUserId('user-id')->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->registrants()->post($requestBody);


```