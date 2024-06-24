---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Calendar;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Calendar();
$requestBody->setName('Volunteer');

$result = $graphServiceClient->me()->calendars()->post($requestBody)->wait();

```