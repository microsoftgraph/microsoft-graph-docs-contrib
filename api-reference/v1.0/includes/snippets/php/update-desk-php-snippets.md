---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Desk;
use Microsoft\Graph\Generated\Models\DropInPlaceMode;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Desk();
$requestBody->setOdataType('microsoft.graph.desk');
$mode = new DropInPlaceMode();
$mode->setOdataType('microsoft.graph.dropInPlaceMode');
$requestBody->setMode($mode);

$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody)->wait();

```