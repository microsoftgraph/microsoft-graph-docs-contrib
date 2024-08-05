---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PersonAnnualEvent;
use Microsoft\Graph\Beta\Generated\Models\PersonAnnualEventType;
use Microsoft\Kiota\Abstractions\Types\Date;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnualEvent();
$requestBody->setType(new PersonAnnualEventType('birthday'));
$requestBody->setDate(new Date('1980-01-08'));

$result = $graphServiceClient->me()->profile()->anniversaries()->post($requestBody)->wait();

```