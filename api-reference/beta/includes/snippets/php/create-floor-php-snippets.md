---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Floor;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Floor();
$requestBody->setOdataType('microsoft.graph.floor');
$requestBody->setDisplayName('F1');
$requestBody->setParentId('767a31a7-6987-41c9-b829-ab351b8aab53');

$result = $graphServiceClient->places()->post($requestBody)->wait();

```