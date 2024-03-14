---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Program();
$requestBody->setDisplayName('testprogram3');
$requestBody->setDescription('test description');

$result = $graphServiceClient->programs()->post($requestBody)->wait();

```