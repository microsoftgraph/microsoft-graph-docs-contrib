---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PersonWebsite;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonWebsite();
$requestBody->setCategories(['football', 	]);
$requestBody->setDisplayName('Lyn Damer');
$requestBody->setWebUrl('www.lyndamer.no');

$result = $graphServiceClient->me()->profile()->websites()->post($requestBody)->wait();

```