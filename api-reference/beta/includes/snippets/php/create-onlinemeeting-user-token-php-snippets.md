---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnlineMeeting();
$requestBody->setStartDateTime(new \DateTime('2019-07-12T14:30:34.2444915-07:00'));
$requestBody->setEndDateTime(new \DateTime('2019-07-12T15:00:34.2464912-07:00'));
$requestBody->setSubject('User Token Meeting');

$result = $graphServiceClient->me()->onlineMeetings()->post($requestBody)->wait();

```