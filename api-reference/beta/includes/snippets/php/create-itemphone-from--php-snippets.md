---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemPhone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPhone();
$requestBody->setDisplayName('Car Phone');
$requestBody->setNumber('+7 499 342 22 13');

$result = $graphServiceClient->me()->profile()->phones()->post($requestBody)->wait();

```