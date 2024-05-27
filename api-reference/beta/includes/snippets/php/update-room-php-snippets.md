---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Room;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Room();
$requestBody->setOdataType('microsoft.graph.room');
$requestBody->setNickname('Conf Room');
$requestBody->setBuilding('1');
$requestBody->setLabel('100');
$requestBody->setCapacity(50);
$requestBody->setIsWheelChairAccessible(false);

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```