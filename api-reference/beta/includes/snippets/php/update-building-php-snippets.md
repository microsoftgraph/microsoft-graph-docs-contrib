---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Place;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Place();
$requestBody->setOdataType('microsoft.graph.building');
$additionalData = [
	'tags' => [
'most popular building', ],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```