---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Building;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Building();
$requestBody->setOdataType('microsoft.graph.building');
$requestBody->setDisplayName('B001');

$result = $graphServiceClient->places()->post($requestBody)->wait();

```