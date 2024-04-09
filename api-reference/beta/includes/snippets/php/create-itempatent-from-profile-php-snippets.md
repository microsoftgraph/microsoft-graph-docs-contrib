---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemPatent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPatent();
$requestBody->setDescription('Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.');
$requestBody->setDisplayName('Inferring User Intent through browsing behaviors');
$requestBody->setIsPending(true);
$requestBody->setNumber('USPTO-3954432633');
$requestBody->setWebUrl('https://patents.gov/3954432633');

$result = $graphServiceClient->me()->profile()->patents()->post($requestBody)->wait();

```