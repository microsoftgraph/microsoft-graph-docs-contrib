---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\VirtualEventTownhall;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventTownhall();
$startDateTime = new DateTimeTimeZone();
$startDateTime->setDateTime('2024-03-31T10:00:00');
$startDateTime->setTimeZone('Pacific Standard Time');
$requestBody->setStartDateTime($startDateTime);
$endDateTime = new DateTimeTimeZone();
$endDateTime->setDateTime('2024-03-31T17:00:00');
$endDateTime->setTimeZone('Pacific Standard Time');
$requestBody->setEndDateTime($endDateTime);

$result = $graphServiceClient->solutions()->virtualEvents()->townhalls()->byVirtualEventTownhallId('virtualEventTownhall-id')->patch($requestBody)->wait();

```