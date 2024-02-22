---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonWebsite();
$requestBody->setDescription('Lyn Damer play in the Women\'s 1st Division (Toppserien) in Norway');

$result = $graphServiceClient->me()->profile()->websites()->byPersonWebsiteId('personWebsite-id')->patch($requestBody)->wait();

```