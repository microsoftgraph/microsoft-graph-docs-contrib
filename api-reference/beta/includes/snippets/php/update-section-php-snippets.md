---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Section;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Section();
$requestBody->setOdataType('microsoft.graph.section');
$requestBody->setLabel('discuss area');

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```