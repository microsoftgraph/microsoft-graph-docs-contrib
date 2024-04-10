---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PersonInterest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonInterest();
$requestBody->setCategories(['Sports', 	]);

$result = $graphServiceClient->me()->profile()->interests()->byPersonInterestId('personInterest-id')->patch($requestBody)->wait();

```