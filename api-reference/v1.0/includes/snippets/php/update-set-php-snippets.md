---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Set;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Set();
$requestBody->setDescription('mySet');

$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->sets()->bySetId('set-id')->patch($requestBody)->wait();

```