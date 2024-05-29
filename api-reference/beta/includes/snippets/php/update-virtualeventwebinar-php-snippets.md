---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventWebinar;
use Microsoft\Graph\Beta\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventWebinar();
$startDateTime = new DateTimeTimeZone();
$startDateTime->setDateTime('2024-03-31T10:00:00');
$startDateTime->setTimeZone('Pacific Standard Time');
$requestBody->setStartDateTime($startDateTime);
$endDateTime = new DateTimeTimeZone();
$endDateTime->setDateTime('2024-03-31T17:00:00');
$endDateTime->setTimeZone('Pacific Standard Time');
$requestBody->setEndDateTime($endDateTime);

$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->patch($requestBody)->wait();

```