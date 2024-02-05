---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonWebsite();
$requestBody->setCategories(['football', 	]);
$requestBody->setDisplayName('Lyn Damer');
$requestBody->setWebUrl('www.lyndamer.no');

$result = $graphServiceClient->me()->profile()->websites()->post($requestBody)->wait();

```