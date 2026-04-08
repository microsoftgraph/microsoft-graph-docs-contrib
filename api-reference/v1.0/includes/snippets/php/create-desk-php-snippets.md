---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Desk;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Desk();
$requestBody->setOdataType('microsoft.graph.desk');
$requestBody->setDisplayName('D1');
$requestBody->setParentId('1ad0f725-6885-49c5-9a47-3b22a1f9409d');

$result = $graphServiceClient->places()->post($requestBody)->wait();

```