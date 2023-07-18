---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MeetingRegistrationQuestion();
$requestBody->setAnswerInputType(new AnswerInputType('radioButton'));

$requestBody->setAnswerOptions(['Software Engineer', 'Software Development Manager', 'Product Manager', 'Data scientist', 'Other', 	]);



$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->customQuestions()->byMeetingRegistrationQuestionId('meetingRegistrationQuestion-id')->patch($requestBody);


```