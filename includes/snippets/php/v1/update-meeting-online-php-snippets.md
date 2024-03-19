---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Event();
$requestBody->setIsOnlineMeeting(true);
$requestBody->setOnlineMeetingProvider(new OnlineMeetingProviderType('teamsForBusiness'));

$result = $graphServiceClient->me()->events()->byEventId('event-id')->patch($requestBody)->wait();

```