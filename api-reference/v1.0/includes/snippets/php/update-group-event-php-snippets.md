---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Event;
use Microsoft\Graph\Generated\Models\Location;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Event();
$location = new Location();
$location->setDisplayName('Conf Room 2');
$requestBody->setLocation($location);

$result = $graphServiceClient->groups()->byGroupId('group-id')->calendar()->events()->byEventId('event-id')->patch($requestBody)->wait();

```