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
$requestBody->setDisplayName('S1');
$requestBody->setParentId('46ef7aed-5d94-4fd4-ae03-b333bc7a6955');

$result = $graphServiceClient->places()->post($requestBody)->wait();

```