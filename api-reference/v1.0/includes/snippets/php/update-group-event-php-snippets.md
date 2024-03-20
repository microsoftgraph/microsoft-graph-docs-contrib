---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Event();
$location = new Location();
$location->setDisplayName('Conf Room 2');
$requestBody->setLocation($location);

$result = $graphServiceClient->groups()->byGroupId('group-id')->calendar()->events()->byEventId('event-id')->patch($requestBody)->wait();

```