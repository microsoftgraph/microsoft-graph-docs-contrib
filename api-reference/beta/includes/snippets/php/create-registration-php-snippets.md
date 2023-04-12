---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RegistrationPostRequestBody();
$additionalData = [
		'@odata.type' => '#microsoft.graph.meetingRegistration', 
		'subject' => 'Microsoft Ignite', 
		'description' => 'Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.', 
		'startDateTime' => '2021-11-02T08:00:00-08:00', 
		'endDateTime' => '2021-11-04T04:00:00-08:00', 
		'allowedRegistrant' => 'everyone', 
		'speakers' => $speakers1 = new ();
$		speakers1->setDisplayName('Henry Ross');

$		speakers1->setBio('Chairman and Chief Executive Officer');


$speakersArray []= $speakers1;
$speakers2 = new ();
$		speakers2->setDisplayName('Hailey Clark');

$		speakers2->setBio('EVP');


$speakersArray []= $speakers2;
$requestBody->setSpeakers($speakersArray);


	'customQuestions' => $customQuestions1 = new ();
$	customQuestions1->setDisplayName('Are you a developer?');

$	customQuestions1->setAnswerInputType('radioButton');

$customQuestions1->setAnswerOptions(['Yes', 'No', ]);

$customQuestions1->setIsRequired(true);


$customQuestionsArray []= $customQuestions1;
$customQuestions2 = new ();
$customQuestions2->setDisplayName('Where did you hear about us?');

$customQuestions2->setAnswerInputType('text');

$customQuestions2->setIsRequired(false);


$customQuestionsArray []= $customQuestions2;
$requestBody->setCustomQuestions($customQuestionsArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->me()->onlineMeetingsById('onlineMeeting-id')->registration()->post($requestBody);


```