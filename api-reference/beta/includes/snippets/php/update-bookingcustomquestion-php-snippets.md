---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\BookingCustomQuestion;
use Microsoft\Graph\Beta\Generated\Models\AnswerInputType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BookingCustomQuestion();
$requestBody->setOdataType('#microsoft.graph.bookingCustomQuestion');
$requestBody->setDisplayName('What is your age?');
$requestBody->setAnswerInputType(new AnswerInputType('text'));
$requestBody->setAnswerOptions([	]);

$result = $graphServiceClient->solutions()->bookingBusinesses()->byBookingBusinessId('bookingBusiness-id')->customQuestions()->byBookingCustomQuestionId('bookingCustomQuestion-id')->patch($requestBody)->wait();

```