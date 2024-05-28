---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PersonName;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonName();
$requestBody->setDisplayName('Innocenty Popov');
$requestBody->setFirst('Innocenty');
$requestBody->setInitials('IP');
$requestBody->setLast('Popov');
$requestBody->setLanguageTag('en-US');
$requestBody->setMaiden(null);

$result = $graphServiceClient->me()->profile()->names()->post($requestBody)->wait();

```