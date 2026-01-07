---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Building;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Building();
$requestBody->setOdataType('microsoft.graph.building');
$requestBody->setTags(['most popular building', 	]);

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```