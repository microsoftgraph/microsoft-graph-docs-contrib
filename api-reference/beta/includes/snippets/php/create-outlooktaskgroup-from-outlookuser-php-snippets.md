---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OutlookTaskGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutlookTaskGroup();
$requestBody->setName('Leisure tasks');

$result = $graphServiceClient->me()->outlook()->taskGroups()->post($requestBody)->wait();

```