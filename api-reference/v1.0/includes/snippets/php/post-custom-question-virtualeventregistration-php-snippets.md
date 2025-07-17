---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\VirtualEventRegistrationCustomQuestion;
use Microsoft\Graph\Generated\Models\VirtualEventRegistrationQuestionAnswerInputType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventRegistrationCustomQuestion();
$requestBody->setOdataType('#microsoft.graph.virtualEventRegistrationCustomQuestion');
$requestBody->setDisplayName('What\'s your job position?');
$requestBody->setAnswerInputType(new VirtualEventRegistrationQuestionAnswerInputType('multiChoice'));
$requestBody->setAnswerChoices(['Software Engineer', 'Engineer Manager', 'Product Manager', 	]);

$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->registrationConfiguration()->questions()->post($requestBody)->wait();

```