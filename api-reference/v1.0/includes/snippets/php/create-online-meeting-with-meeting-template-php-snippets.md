---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnlineMeeting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnlineMeeting();
$requestBody->setStartDateTime(new \DateTime('2019-07-12T14:30:34.2444915-07:00'));
$requestBody->setEndDateTime(new \DateTime('2019-07-12T15:00:34.2464912-07:00'));
$requestBody->setSubject('User meeting');
$requestBody->setMeetingTemplateId('05b9ed5f-2ac3-4470-aae9-f4a0c30b1a4b');

$result = $graphServiceClient->me()->onlineMeetings()->post($requestBody)->wait();

```