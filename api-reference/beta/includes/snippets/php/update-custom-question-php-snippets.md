---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MeetingRegistrationQuestion();
$requestBody->setAnswerInputType(new AnswerInputType('radioButton'));
$requestBody->setAnswerOptions(['Software Engineer', 'Software Development Manager', 'Product Manager', 'Data scientist', 'Other', 	]);

$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->customQuestions()->byMeetingRegistrationQuestionId('meetingRegistrationQuestion-id')->patch($requestBody)->wait();

```