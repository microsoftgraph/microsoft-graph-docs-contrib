---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MeetingRegistrationQuestion();
$requestBody->setAnswerInputType(new AnswerInputType('radiobutton'));

$requestBody->setAnswerOptions(['Software Engineer', 'Software Development Manager', 'Product Manager', 'Data scientist', 'Other', ]);



$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->registration()->customQuestions()->byCustomQuestionId('meetingRegistrationQuestion-id')->patch($requestBody);


```