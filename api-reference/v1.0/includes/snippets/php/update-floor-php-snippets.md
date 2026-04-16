---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Floor;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Floor();
$requestBody->setOdataType('microsoft.graph.floor');
$requestBody->setIsWheelChairAccessible(true);
$requestBody->setSortOrder(2);

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```