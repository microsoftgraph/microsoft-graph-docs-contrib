---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Room;
use Microsoft\Graph\Beta\Generated\Models\BookingType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Room();
$requestBody->setOdataType('microsoft.graph.room');
$requestBody->setDisplayName('Conf Room 4/3.3G11');
$requestBody->setParentId('46ef7aed-5d94-4fd4-ae03-b333bc7a6955');
$requestBody->setBookingType(new BookingType('standard'));

$result = $graphServiceClient->places()->post($requestBody)->wait();

```