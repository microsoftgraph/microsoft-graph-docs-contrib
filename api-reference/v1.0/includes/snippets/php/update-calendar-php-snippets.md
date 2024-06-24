---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Calendar;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Calendar();
$requestBody->setName('Social events');

$result = $graphServiceClient->me()->calendar()->patch($requestBody)->wait();

```