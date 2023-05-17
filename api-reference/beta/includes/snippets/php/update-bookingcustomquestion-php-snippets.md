---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BookingCustomQuestion();
$requestBody->set@odatatype('#microsoft.graph.bookingCustomQuestion');

$requestBody->setDisplayName('What is your age?');

$requestBody->setAnswerInputType(new AnswerInputType('text'));

$requestBody->setAnswerOptions([]);



$result = $graphServiceClient->bookingBusinesses()->byBookingBusinesseId('bookingBusiness-id')->customQuestions()->byCustomQuestionId('bookingCustomQuestion-id')->patch($requestBody);


```